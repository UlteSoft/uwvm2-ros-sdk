/** @file Complete typed Service/Action owners for the selected C++ profile. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/vendor.hpp>
/** @brief Import complete C declarations with their intentional aggregate zero initialization. */
#if defined(__clang__)
# pragma clang diagnostic push
# pragma clang diagnostic ignored "-Wmissing-braces"
# pragma clang diagnostic ignored "-Wmissing-field-initializers"
#endif
#include <franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif
#include "bounded_records.hpp"

namespace uwvm_custom
{
#ifndef ROSWASM_CPP_VENDOR_COMMON_NAMESPACE
# define ROSWASM_CPP_VENDOR_COMMON_NAMESPACE 1

    /**
     * @brief Borrow an exact generated-interface alias.
     * @details Returns the same pointer and byte count without allocation, validation or authority.
     * Keep the original StringView storage alive for the synchronous consumer. Does not open an
     * endpoint.
     * @param[in] value Borrowed counted alias bytes.
     * @return A borrowed C string range with no added terminator.
     * @see roswasmcpp::vendor_detail::alias
     */
    inline roswasmc_string alias(::roswasmcpp::StringView value)
    {
        return ::roswasmcpp::vendor_detail::alias(value);
    }

    /**
     * @brief Common stationary owner for independent advertise/respond roles.
     * @details Aliases the shared C++ foundation owner; it retains each actual Host handle separately
     * and exposes checked construction/cleanup reports. Neither selecting this type nor constructing a
     * binding grants rights.
     * @see roswasmcpp::vendor_detail::ServerOwners
     */
    typedef ::roswasmcpp::vendor_detail::ServerOwners ServerOwners;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASP 1

    /**
     * @brief Exact C operation binding for Ros1Franka_gripperGrasp.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_gripper_Grasp_send
     */
    struct Ros1Franka_gripperGraspBinding
    {
        /**
         * @brief Complete goal record for Ros1Franka_gripperGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperGraspGoal>
         */
        typedef Ros1Franka_gripperGraspGoal Goal;
        /**
         * @brief Complete result record for Ros1Franka_gripperGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperGraspResult>
         */
        typedef Ros1Franka_gripperGraspResult Result;
        /**
         * @brief Complete feedback record for Ros1Franka_gripperGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperGraspFeedback>
         */
        typedef Ros1Franka_gripperGraspFeedback Feedback;

        /**
         * @brief Send and locally track one Ros1Franka_gripperGrasp goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_gripper_Grasp_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_franka_gripper_Grasp_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros1Franka_gripperGrasp goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_franka_gripper_Grasp_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_franka_gripper_Grasp_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros1Franka_gripperGrasp result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_franka_gripper_Grasp_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_franka_gripper_Grasp_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros1Franka_gripperGrasp server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_franka_gripper_Grasp_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_franka_gripper_Grasp_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros1Franka_gripperGrasp.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Grasp_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Grasp_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros1Franka_gripperGrasp.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Grasp_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Grasp_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_GraspResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_GraspResult_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_GraspFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_GraspFeedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros1Franka_gripperGrasp.
     * @details Binds every operation to Ros1Franka_gripperGraspBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Franka_gripperGraspBinding> Ros1Franka_gripperGraspClient;
    /**
     * @brief Owning typed action server for Ros1Franka_gripperGrasp.
     * @details Binds every operation to Ros1Franka_gripperGraspBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Franka_gripperGraspBinding> Ros1Franka_gripperGraspServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMING 1

    /**
     * @brief Exact C operation binding for Ros1Franka_gripperHoming.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_gripper_Homing_send
     */
    struct Ros1Franka_gripperHomingBinding
    {
        /**
         * @brief Complete goal record for Ros1Franka_gripperHoming.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperHomingGoal>
         */
        typedef Ros1Franka_gripperHomingGoal Goal;
        /**
         * @brief Complete result record for Ros1Franka_gripperHoming.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperHomingResult>
         */
        typedef Ros1Franka_gripperHomingResult Result;
        /**
         * @brief Complete feedback record for Ros1Franka_gripperHoming.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperHomingFeedback>
         */
        typedef Ros1Franka_gripperHomingFeedback Feedback;

        /**
         * @brief Send and locally track one Ros1Franka_gripperHoming goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_gripper_Homing_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_franka_gripper_Homing_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros1Franka_gripperHoming goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_franka_gripper_Homing_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_franka_gripper_Homing_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros1Franka_gripperHoming result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_franka_gripper_Homing_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_franka_gripper_Homing_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros1Franka_gripperHoming server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_franka_gripper_Homing_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_franka_gripper_Homing_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros1Franka_gripperHoming.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Homing_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Homing_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros1Franka_gripperHoming.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Homing_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Homing_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_HomingResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_HomingResult_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_HomingFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_HomingFeedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros1Franka_gripperHoming.
     * @details Binds every operation to Ros1Franka_gripperHomingBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Franka_gripperHomingBinding> Ros1Franka_gripperHomingClient;
    /**
     * @brief Owning typed action server for Ros1Franka_gripperHoming.
     * @details Binds every operation to Ros1Franka_gripperHomingBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Franka_gripperHomingBinding> Ros1Franka_gripperHomingServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVE 1

    /**
     * @brief Exact C operation binding for Ros1Franka_gripperMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_gripper_Move_send
     */
    struct Ros1Franka_gripperMoveBinding
    {
        /**
         * @brief Complete goal record for Ros1Franka_gripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperMoveGoal>
         */
        typedef Ros1Franka_gripperMoveGoal Goal;
        /**
         * @brief Complete result record for Ros1Franka_gripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperMoveResult>
         */
        typedef Ros1Franka_gripperMoveResult Result;
        /**
         * @brief Complete feedback record for Ros1Franka_gripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperMoveFeedback>
         */
        typedef Ros1Franka_gripperMoveFeedback Feedback;

        /**
         * @brief Send and locally track one Ros1Franka_gripperMove goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_gripper_Move_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_franka_gripper_Move_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros1Franka_gripperMove goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_franka_gripper_Move_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_franka_gripper_Move_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros1Franka_gripperMove result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_franka_gripper_Move_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_franka_gripper_Move_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros1Franka_gripperMove server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_franka_gripper_Move_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_franka_gripper_Move_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros1Franka_gripperMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Move_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Move_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros1Franka_gripperMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Move_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Move_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_MoveResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_MoveResult_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_MoveFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_MoveFeedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros1Franka_gripperMove.
     * @details Binds every operation to Ros1Franka_gripperMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Franka_gripperMoveBinding> Ros1Franka_gripperMoveClient;
    /**
     * @brief Owning typed action server for Ros1Franka_gripperMove.
     * @details Binds every operation to Ros1Franka_gripperMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Franka_gripperMoveBinding> Ros1Franka_gripperMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOP 1

    /**
     * @brief Exact C operation binding for Ros1Franka_gripperStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_gripper_Stop_send
     */
    struct Ros1Franka_gripperStopBinding
    {
        /**
         * @brief Complete goal record for Ros1Franka_gripperStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperStopGoal>
         */
        typedef Ros1Franka_gripperStopGoal Goal;
        /**
         * @brief Complete result record for Ros1Franka_gripperStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperStopResult>
         */
        typedef Ros1Franka_gripperStopResult Result;
        /**
         * @brief Complete feedback record for Ros1Franka_gripperStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperStopFeedback>
         */
        typedef Ros1Franka_gripperStopFeedback Feedback;

        /**
         * @brief Send and locally track one Ros1Franka_gripperStop goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_gripper_Stop_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_franka_gripper_Stop_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros1Franka_gripperStop goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_franka_gripper_Stop_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_franka_gripper_Stop_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros1Franka_gripperStop result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_franka_gripper_Stop_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_franka_gripper_Stop_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros1Franka_gripperStop server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_franka_gripper_Stop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_franka_gripper_Stop_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros1Franka_gripperStop.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Stop_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Stop_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros1Franka_gripperStop.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_gripper_Stop_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_Stop_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_StopResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_franka_gripper_StopResult_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_gripper_StopFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_franka_gripper_StopFeedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros1Franka_gripperStop.
     * @details Binds every operation to Ros1Franka_gripperStopBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Franka_gripperStopBinding> Ros1Franka_gripperStopClient;
    /**
     * @brief Owning typed action server for Ros1Franka_gripperStop.
     * @details Binds every operation to Ros1Franka_gripperStopBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Franka_gripperStopBinding> Ros1Franka_gripperStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERY 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsErrorRecovery.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_ErrorRecovery_send
     */
    struct Ros1Franka_msgsErrorRecoveryBinding
    {
        /**
         * @brief Complete goal record for Ros1Franka_msgsErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryGoal>
         */
        typedef Ros1Franka_msgsErrorRecoveryGoal Goal;
        /**
         * @brief Complete result record for Ros1Franka_msgsErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryResult>
         */
        typedef Ros1Franka_msgsErrorRecoveryResult Result;
        /**
         * @brief Complete feedback record for Ros1Franka_msgsErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryFeedback>
         */
        typedef Ros1Franka_msgsErrorRecoveryFeedback Feedback;

        /**
         * @brief Send and locally track one Ros1Franka_msgsErrorRecovery goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecovery_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecovery_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros1Franka_msgsErrorRecovery goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecovery_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecovery_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros1Franka_msgsErrorRecovery result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecovery_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecovery_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsErrorRecovery server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecovery_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecovery_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros1Franka_msgsErrorRecovery.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecovery_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecovery_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros1Franka_msgsErrorRecovery.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecovery_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecovery_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros1Franka_msgsErrorRecovery.
     * @details Binds every operation to Ros1Franka_msgsErrorRecoveryBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Franka_msgsErrorRecoveryBinding> Ros1Franka_msgsErrorRecoveryClient;
    /**
     * @brief Owning typed action server for Ros1Franka_msgsErrorRecovery.
     * @details Binds every operation to Ros1Franka_msgsErrorRecoveryBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Franka_msgsErrorRecoveryBinding> Ros1Franka_msgsErrorRecoveryServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCE 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsSetCartesianImpedance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_call
     */
    struct Ros1Franka_msgsSetCartesianImpedanceBinding
    {
        /**
         * @brief Complete request record for Ros1Franka_msgsSetCartesianImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceRequest>
         */
        typedef Ros1Franka_msgsSetCartesianImpedanceRequest Request;
        /**
         * @brief Complete response record for Ros1Franka_msgsSetCartesianImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceResponse>
         */
        typedef Ros1Franka_msgsSetCartesianImpedanceResponse Response;

        /**
         * @brief Issue one complete Ros1Franka_msgsSetCartesianImpedance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsSetCartesianImpedance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Franka_msgsSetCartesianImpedance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetCartesianImpedance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Franka_msgsSetCartesianImpedance.
     * @details Binds every operation to Ros1Franka_msgsSetCartesianImpedanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Franka_msgsSetCartesianImpedanceBinding> Ros1Franka_msgsSetCartesianImpedanceClient;
    /**
     * @brief Owning typed service server for Ros1Franka_msgsSetCartesianImpedance.
     * @details Binds every operation to Ros1Franka_msgsSetCartesianImpedanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Franka_msgsSetCartesianImpedanceBinding> Ros1Franka_msgsSetCartesianImpedanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAME 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsSetEEFrame.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_SetEEFrame_call
     */
    struct Ros1Franka_msgsSetEEFrameBinding
    {
        /**
         * @brief Complete request record for Ros1Franka_msgsSetEEFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetEEFrameRequest>
         */
        typedef Ros1Franka_msgsSetEEFrameRequest Request;
        /**
         * @brief Complete response record for Ros1Franka_msgsSetEEFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetEEFrameResponse>
         */
        typedef Ros1Franka_msgsSetEEFrameResponse Response;

        /**
         * @brief Issue one complete Ros1Franka_msgsSetEEFrame request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrame_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetEEFrame_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsSetEEFrame request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrame_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_franka_msgs_SetEEFrame_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Franka_msgsSetEEFrame ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrame_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetEEFrame_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Franka_msgsSetEEFrame.
     * @details Binds every operation to Ros1Franka_msgsSetEEFrameBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Franka_msgsSetEEFrameBinding> Ros1Franka_msgsSetEEFrameClient;
    /**
     * @brief Owning typed service server for Ros1Franka_msgsSetEEFrame.
     * @details Binds every operation to Ros1Franka_msgsSetEEFrameBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Franka_msgsSetEEFrameBinding> Ros1Franka_msgsSetEEFrameServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIOR 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsSetForceTorqueCollisionBehavior.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_call
     */
    struct Ros1Franka_msgsSetForceTorqueCollisionBehaviorBinding
    {
        /**
         * @brief Complete request record for Ros1Franka_msgsSetForceTorqueCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest>
         */
        typedef Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest Request;
        /**
         * @brief Complete response record for Ros1Franka_msgsSetForceTorqueCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse>
         */
        typedef Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse Response;

        /**
         * @brief Issue one complete Ros1Franka_msgsSetForceTorqueCollisionBehavior request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsSetForceTorqueCollisionBehavior request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Franka_msgsSetForceTorqueCollisionBehavior ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehavior_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Franka_msgsSetForceTorqueCollisionBehavior.
     * @details Binds every operation to Ros1Franka_msgsSetForceTorqueCollisionBehaviorBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Franka_msgsSetForceTorqueCollisionBehaviorBinding>
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorClient;
    /**
     * @brief Owning typed service server for Ros1Franka_msgsSetForceTorqueCollisionBehavior.
     * @details Binds every operation to Ros1Franka_msgsSetForceTorqueCollisionBehaviorBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Franka_msgsSetForceTorqueCollisionBehaviorBinding>
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIOR 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsSetFullCollisionBehavior.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_call
     */
    struct Ros1Franka_msgsSetFullCollisionBehaviorBinding
    {
        /**
         * @brief Complete request record for Ros1Franka_msgsSetFullCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorRequest>
         */
        typedef Ros1Franka_msgsSetFullCollisionBehaviorRequest Request;
        /**
         * @brief Complete response record for Ros1Franka_msgsSetFullCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorResponse>
         */
        typedef Ros1Franka_msgsSetFullCollisionBehaviorResponse Response;

        /**
         * @brief Issue one complete Ros1Franka_msgsSetFullCollisionBehavior request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsSetFullCollisionBehavior request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Franka_msgsSetFullCollisionBehavior ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehavior_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Franka_msgsSetFullCollisionBehavior.
     * @details Binds every operation to Ros1Franka_msgsSetFullCollisionBehaviorBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Franka_msgsSetFullCollisionBehaviorBinding> Ros1Franka_msgsSetFullCollisionBehaviorClient;
    /**
     * @brief Owning typed service server for Ros1Franka_msgsSetFullCollisionBehavior.
     * @details Binds every operation to Ros1Franka_msgsSetFullCollisionBehaviorBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Franka_msgsSetFullCollisionBehaviorBinding> Ros1Franka_msgsSetFullCollisionBehaviorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCE 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsSetJointImpedance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_SetJointImpedance_call
     */
    struct Ros1Franka_msgsSetJointImpedanceBinding
    {
        /**
         * @brief Complete request record for Ros1Franka_msgsSetJointImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetJointImpedanceRequest>
         */
        typedef Ros1Franka_msgsSetJointImpedanceRequest Request;
        /**
         * @brief Complete response record for Ros1Franka_msgsSetJointImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetJointImpedanceResponse>
         */
        typedef Ros1Franka_msgsSetJointImpedanceResponse Response;

        /**
         * @brief Issue one complete Ros1Franka_msgsSetJointImpedance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetJointImpedance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsSetJointImpedance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_franka_msgs_SetJointImpedance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Franka_msgsSetJointImpedance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetJointImpedance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Franka_msgsSetJointImpedance.
     * @details Binds every operation to Ros1Franka_msgsSetJointImpedanceBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Franka_msgsSetJointImpedanceBinding> Ros1Franka_msgsSetJointImpedanceClient;
    /**
     * @brief Owning typed service server for Ros1Franka_msgsSetJointImpedance.
     * @details Binds every operation to Ros1Franka_msgsSetJointImpedanceBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Franka_msgsSetJointImpedanceBinding> Ros1Franka_msgsSetJointImpedanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAME 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsSetKFrame.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_SetKFrame_call
     */
    struct Ros1Franka_msgsSetKFrameBinding
    {
        /**
         * @brief Complete request record for Ros1Franka_msgsSetKFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetKFrameRequest>
         */
        typedef Ros1Franka_msgsSetKFrameRequest Request;
        /**
         * @brief Complete response record for Ros1Franka_msgsSetKFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetKFrameResponse>
         */
        typedef Ros1Franka_msgsSetKFrameResponse Response;

        /**
         * @brief Issue one complete Ros1Franka_msgsSetKFrame request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrame_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetKFrame_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsSetKFrame request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrame_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_franka_msgs_SetKFrame_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Franka_msgsSetKFrame ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrame_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetKFrame_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Franka_msgsSetKFrame.
     * @details Binds every operation to Ros1Franka_msgsSetKFrameBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Franka_msgsSetKFrameBinding> Ros1Franka_msgsSetKFrameClient;
    /**
     * @brief Owning typed service server for Ros1Franka_msgsSetKFrame.
     * @details Binds every operation to Ros1Franka_msgsSetKFrameBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Franka_msgsSetKFrameBinding> Ros1Franka_msgsSetKFrameServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Franka_msgsSetLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_franka_msgs_SetLoad_call
     */
    struct Ros1Franka_msgsSetLoadBinding
    {
        /**
         * @brief Complete request record for Ros1Franka_msgsSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetLoadRequest>
         */
        typedef Ros1Franka_msgsSetLoadRequest Request;
        /**
         * @brief Complete response record for Ros1Franka_msgsSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetLoadResponse>
         */
        typedef Ros1Franka_msgsSetLoadResponse Response;

        /**
         * @brief Issue one complete Ros1Franka_msgsSetLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_franka_msgs_SetLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Franka_msgsSetLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_franka_msgs_SetLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_franka_msgs_SetLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Franka_msgsSetLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_franka_msgs_SetLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_franka_msgs_SetLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Franka_msgsSetLoad.
     * @details Binds every operation to Ros1Franka_msgsSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Franka_msgsSetLoadBinding> Ros1Franka_msgsSetLoadClient;
    /**
     * @brief Owning typed service server for Ros1Franka_msgsSetLoad.
     * @details Binds every operation to Ros1Franka_msgsSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Franka_msgsSetLoadBinding> Ros1Franka_msgsSetLoadServer;
#endif
}  // namespace uwvm_custom
