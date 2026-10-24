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
#include <franka/c/ros2/franka-ros2-complete/bounded_interfaces.h>
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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsActionErrorRecovery.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_send
     */
    struct Ros2Franka_msgsActionErrorRecoveryBinding
    {
        /**
         * @brief Complete goal record for Ros2Franka_msgsActionErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Goal>
         */
        typedef Ros2Franka_msgsActionErrorRecovery_Goal Goal;
        /**
         * @brief Complete result record for Ros2Franka_msgsActionErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Result>
         */
        typedef Ros2Franka_msgsActionErrorRecovery_Result Result;
        /**
         * @brief Complete feedback record for Ros2Franka_msgsActionErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Feedback>
         */
        typedef Ros2Franka_msgsActionErrorRecovery_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Franka_msgsActionErrorRecovery goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Franka_msgsActionErrorRecovery goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Franka_msgsActionErrorRecovery result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsActionErrorRecovery server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Franka_msgsActionErrorRecovery.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Franka_msgsActionErrorRecovery.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Franka_msgsActionErrorRecovery.
     * @details Binds every operation to Ros2Franka_msgsActionErrorRecoveryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Franka_msgsActionErrorRecoveryBinding> Ros2Franka_msgsActionErrorRecoveryClient;
    /**
     * @brief Owning typed action server for Ros2Franka_msgsActionErrorRecovery.
     * @details Binds every operation to Ros2Franka_msgsActionErrorRecoveryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Franka_msgsActionErrorRecoveryBinding> Ros2Franka_msgsActionErrorRecoveryServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsActionGrasp.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_action_Grasp_send
     */
    struct Ros2Franka_msgsActionGraspBinding
    {
        /**
         * @brief Complete goal record for Ros2Franka_msgsActionGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Goal>
         */
        typedef Ros2Franka_msgsActionGrasp_Goal Goal;
        /**
         * @brief Complete result record for Ros2Franka_msgsActionGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Result>
         */
        typedef Ros2Franka_msgsActionGrasp_Result Result;
        /**
         * @brief Complete feedback record for Ros2Franka_msgsActionGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Feedback>
         */
        typedef Ros2Franka_msgsActionGrasp_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Franka_msgsActionGrasp goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Franka_msgsActionGrasp goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Franka_msgsActionGrasp result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsActionGrasp server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Franka_msgsActionGrasp.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Franka_msgsActionGrasp.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Franka_msgsActionGrasp.
     * @details Binds every operation to Ros2Franka_msgsActionGraspBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Franka_msgsActionGraspBinding> Ros2Franka_msgsActionGraspClient;
    /**
     * @brief Owning typed action server for Ros2Franka_msgsActionGrasp.
     * @details Binds every operation to Ros2Franka_msgsActionGraspBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Franka_msgsActionGraspBinding> Ros2Franka_msgsActionGraspServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsActionHoming.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_action_Homing_send
     */
    struct Ros2Franka_msgsActionHomingBinding
    {
        /**
         * @brief Complete goal record for Ros2Franka_msgsActionHoming.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Goal>
         */
        typedef Ros2Franka_msgsActionHoming_Goal Goal;
        /**
         * @brief Complete result record for Ros2Franka_msgsActionHoming.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Result>
         */
        typedef Ros2Franka_msgsActionHoming_Result Result;
        /**
         * @brief Complete feedback record for Ros2Franka_msgsActionHoming.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Feedback>
         */
        typedef Ros2Franka_msgsActionHoming_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Franka_msgsActionHoming goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Franka_msgsActionHoming goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Franka_msgsActionHoming result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsActionHoming server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Franka_msgsActionHoming.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Franka_msgsActionHoming.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Franka_msgsActionHoming.
     * @details Binds every operation to Ros2Franka_msgsActionHomingBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Franka_msgsActionHomingBinding> Ros2Franka_msgsActionHomingClient;
    /**
     * @brief Owning typed action server for Ros2Franka_msgsActionHoming.
     * @details Binds every operation to Ros2Franka_msgsActionHomingBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Franka_msgsActionHomingBinding> Ros2Franka_msgsActionHomingServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsActionMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_action_Move_send
     */
    struct Ros2Franka_msgsActionMoveBinding
    {
        /**
         * @brief Complete goal record for Ros2Franka_msgsActionMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionMove_Goal>
         */
        typedef Ros2Franka_msgsActionMove_Goal Goal;
        /**
         * @brief Complete result record for Ros2Franka_msgsActionMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionMove_Result>
         */
        typedef Ros2Franka_msgsActionMove_Result Result;
        /**
         * @brief Complete feedback record for Ros2Franka_msgsActionMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionMove_Feedback>
         */
        typedef Ros2Franka_msgsActionMove_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Franka_msgsActionMove goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Franka_msgsActionMove goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Franka_msgsActionMove result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsActionMove server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Franka_msgsActionMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Franka_msgsActionMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Franka_msgsActionMove.
     * @details Binds every operation to Ros2Franka_msgsActionMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Franka_msgsActionMoveBinding> Ros2Franka_msgsActionMoveClient;
    /**
     * @brief Owning typed action server for Ros2Franka_msgsActionMove.
     * @details Binds every operation to Ros2Franka_msgsActionMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Franka_msgsActionMoveBinding> Ros2Franka_msgsActionMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsActionPTPMotion.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_send
     */
    struct Ros2Franka_msgsActionPTPMotionBinding
    {
        /**
         * @brief Complete goal record for Ros2Franka_msgsActionPTPMotion.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Goal>
         */
        typedef Ros2Franka_msgsActionPTPMotion_Goal Goal;
        /**
         * @brief Complete result record for Ros2Franka_msgsActionPTPMotion.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Result>
         */
        typedef Ros2Franka_msgsActionPTPMotion_Result Result;
        /**
         * @brief Complete feedback record for Ros2Franka_msgsActionPTPMotion.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Feedback>
         */
        typedef Ros2Franka_msgsActionPTPMotion_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Franka_msgsActionPTPMotion goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Franka_msgsActionPTPMotion goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Franka_msgsActionPTPMotion result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsActionPTPMotion server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Franka_msgsActionPTPMotion.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Franka_msgsActionPTPMotion.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Franka_msgsActionPTPMotion.
     * @details Binds every operation to Ros2Franka_msgsActionPTPMotionBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Franka_msgsActionPTPMotionBinding> Ros2Franka_msgsActionPTPMotionClient;
    /**
     * @brief Owning typed action server for Ros2Franka_msgsActionPTPMotion.
     * @details Binds every operation to Ros2Franka_msgsActionPTPMotionBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Franka_msgsActionPTPMotionBinding> Ros2Franka_msgsActionPTPMotionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsSrvSetCartesianStiffness.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_call
     */
    struct Ros2Franka_msgsSrvSetCartesianStiffnessBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_msgsSrvSetCartesianStiffness.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Request>
         */
        typedef Ros2Franka_msgsSrvSetCartesianStiffness_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_msgsSrvSetCartesianStiffness.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Response>
         */
        typedef Ros2Franka_msgsSrvSetCartesianStiffness_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_msgsSrvSetCartesianStiffness request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsSrvSetCartesianStiffness request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_msgsSrvSetCartesianStiffness ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_msgsSrvSetCartesianStiffness.
     * @details Binds every operation to Ros2Franka_msgsSrvSetCartesianStiffnessBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_msgsSrvSetCartesianStiffnessBinding> Ros2Franka_msgsSrvSetCartesianStiffnessClient;
    /**
     * @brief Owning typed service server for Ros2Franka_msgsSrvSetCartesianStiffness.
     * @details Binds every operation to Ros2Franka_msgsSrvSetCartesianStiffnessBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_msgsSrvSetCartesianStiffnessBinding> Ros2Franka_msgsSrvSetCartesianStiffnessServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_call
     */
    struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehaviorBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request>
         */
        typedef Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response>
         */
        typedef Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior.
     * @details Binds every operation to Ros2Franka_msgsSrvSetForceTorqueCollisionBehaviorBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_msgsSrvSetForceTorqueCollisionBehaviorBinding>
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehaviorClient;
    /**
     * @brief Owning typed service server for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior.
     * @details Binds every operation to Ros2Franka_msgsSrvSetForceTorqueCollisionBehaviorBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_msgsSrvSetForceTorqueCollisionBehaviorBinding>
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehaviorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsSrvSetFullCollisionBehavior.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_call
     */
    struct Ros2Franka_msgsSrvSetFullCollisionBehaviorBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_msgsSrvSetFullCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Request>
         */
        typedef Ros2Franka_msgsSrvSetFullCollisionBehavior_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_msgsSrvSetFullCollisionBehavior.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Response>
         */
        typedef Ros2Franka_msgsSrvSetFullCollisionBehavior_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_msgsSrvSetFullCollisionBehavior request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsSrvSetFullCollisionBehavior request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_msgsSrvSetFullCollisionBehavior ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_msgsSrvSetFullCollisionBehavior.
     * @details Binds every operation to Ros2Franka_msgsSrvSetFullCollisionBehaviorBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_msgsSrvSetFullCollisionBehaviorBinding> Ros2Franka_msgsSrvSetFullCollisionBehaviorClient;
    /**
     * @brief Owning typed service server for Ros2Franka_msgsSrvSetFullCollisionBehavior.
     * @details Binds every operation to Ros2Franka_msgsSrvSetFullCollisionBehaviorBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_msgsSrvSetFullCollisionBehaviorBinding> Ros2Franka_msgsSrvSetFullCollisionBehaviorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsSrvSetJointStiffness.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_call
     */
    struct Ros2Franka_msgsSrvSetJointStiffnessBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_msgsSrvSetJointStiffness.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Request>
         */
        typedef Ros2Franka_msgsSrvSetJointStiffness_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_msgsSrvSetJointStiffness.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Response>
         */
        typedef Ros2Franka_msgsSrvSetJointStiffness_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_msgsSrvSetJointStiffness request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsSrvSetJointStiffness request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_msgsSrvSetJointStiffness ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_msgsSrvSetJointStiffness.
     * @details Binds every operation to Ros2Franka_msgsSrvSetJointStiffnessBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_msgsSrvSetJointStiffnessBinding> Ros2Franka_msgsSrvSetJointStiffnessClient;
    /**
     * @brief Owning typed service server for Ros2Franka_msgsSrvSetJointStiffness.
     * @details Binds every operation to Ros2Franka_msgsSrvSetJointStiffnessBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_msgsSrvSetJointStiffnessBinding> Ros2Franka_msgsSrvSetJointStiffnessServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsSrvSetLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_call
     */
    struct Ros2Franka_msgsSrvSetLoadBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_msgsSrvSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Request>
         */
        typedef Ros2Franka_msgsSrvSetLoad_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_msgsSrvSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Response>
         */
        typedef Ros2Franka_msgsSrvSetLoad_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_msgsSrvSetLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsSrvSetLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_msgsSrvSetLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_msgsSrvSetLoad.
     * @details Binds every operation to Ros2Franka_msgsSrvSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_msgsSrvSetLoadBinding> Ros2Franka_msgsSrvSetLoadClient;
    /**
     * @brief Owning typed service server for Ros2Franka_msgsSrvSetLoad.
     * @details Binds every operation to Ros2Franka_msgsSrvSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_msgsSrvSetLoadBinding> Ros2Franka_msgsSrvSetLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsSrvSetStiffnessFrame.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_call
     */
    struct Ros2Franka_msgsSrvSetStiffnessFrameBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_msgsSrvSetStiffnessFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Request>
         */
        typedef Ros2Franka_msgsSrvSetStiffnessFrame_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_msgsSrvSetStiffnessFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Response>
         */
        typedef Ros2Franka_msgsSrvSetStiffnessFrame_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_msgsSrvSetStiffnessFrame request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsSrvSetStiffnessFrame request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_msgsSrvSetStiffnessFrame ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_msgsSrvSetStiffnessFrame.
     * @details Binds every operation to Ros2Franka_msgsSrvSetStiffnessFrameBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_msgsSrvSetStiffnessFrameBinding> Ros2Franka_msgsSrvSetStiffnessFrameClient;
    /**
     * @brief Owning typed service server for Ros2Franka_msgsSrvSetStiffnessFrame.
     * @details Binds every operation to Ros2Franka_msgsSrvSetStiffnessFrameBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_msgsSrvSetStiffnessFrameBinding> Ros2Franka_msgsSrvSetStiffnessFrameServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME 1

    /**
     * @brief Exact C operation binding for Ros2Franka_msgsSrvSetTCPFrame.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_call
     */
    struct Ros2Franka_msgsSrvSetTCPFrameBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_msgsSrvSetTCPFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Request>
         */
        typedef Ros2Franka_msgsSrvSetTCPFrame_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_msgsSrvSetTCPFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Response>
         */
        typedef Ros2Franka_msgsSrvSetTCPFrame_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_msgsSrvSetTCPFrame request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_msgsSrvSetTCPFrame request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_msgsSrvSetTCPFrame ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_msgsSrvSetTCPFrame.
     * @details Binds every operation to Ros2Franka_msgsSrvSetTCPFrameBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_msgsSrvSetTCPFrameBinding> Ros2Franka_msgsSrvSetTCPFrameClient;
    /**
     * @brief Owning typed service server for Ros2Franka_msgsSrvSetTCPFrame.
     * @details Binds every operation to Ros2Franka_msgsSrvSetTCPFrameBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_msgsSrvSetTCPFrameBinding> Ros2Franka_msgsSrvSetTCPFrameServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsActionMoveAbsolute.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_send
     */
    struct Ros2Franka_spine_msgsActionMoveAbsoluteBinding
    {
        /**
         * @brief Complete goal record for Ros2Franka_spine_msgsActionMoveAbsolute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Goal>
         */
        typedef Ros2Franka_spine_msgsActionMoveAbsolute_Goal Goal;
        /**
         * @brief Complete result record for Ros2Franka_spine_msgsActionMoveAbsolute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Result>
         */
        typedef Ros2Franka_spine_msgsActionMoveAbsolute_Result Result;
        /**
         * @brief Complete feedback record for Ros2Franka_spine_msgsActionMoveAbsolute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Feedback>
         */
        typedef Ros2Franka_spine_msgsActionMoveAbsolute_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Franka_spine_msgsActionMoveAbsolute goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Franka_spine_msgsActionMoveAbsolute goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Franka_spine_msgsActionMoveAbsolute result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsActionMoveAbsolute server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Franka_spine_msgsActionMoveAbsolute.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Franka_spine_msgsActionMoveAbsolute.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Franka_spine_msgsActionMoveAbsolute.
     * @details Binds every operation to Ros2Franka_spine_msgsActionMoveAbsoluteBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Franka_spine_msgsActionMoveAbsoluteBinding> Ros2Franka_spine_msgsActionMoveAbsoluteClient;
    /**
     * @brief Owning typed action server for Ros2Franka_spine_msgsActionMoveAbsolute.
     * @details Binds every operation to Ros2Franka_spine_msgsActionMoveAbsoluteBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Franka_spine_msgsActionMoveAbsoluteBinding> Ros2Franka_spine_msgsActionMoveAbsoluteServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsSrvFaultReset.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_call
     */
    struct Ros2Franka_spine_msgsSrvFaultResetBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_spine_msgsSrvFaultReset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Request>
         */
        typedef Ros2Franka_spine_msgsSrvFaultReset_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_spine_msgsSrvFaultReset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Response>
         */
        typedef Ros2Franka_spine_msgsSrvFaultReset_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_spine_msgsSrvFaultReset request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsSrvFaultReset request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_spine_msgsSrvFaultReset ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_spine_msgsSrvFaultReset.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvFaultResetBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_spine_msgsSrvFaultResetBinding> Ros2Franka_spine_msgsSrvFaultResetClient;
    /**
     * @brief Owning typed service server for Ros2Franka_spine_msgsSrvFaultReset.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvFaultResetBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_spine_msgsSrvFaultResetBinding> Ros2Franka_spine_msgsSrvFaultResetServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsSrvGetParameters.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_call
     */
    struct Ros2Franka_spine_msgsSrvGetParametersBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_spine_msgsSrvGetParameters.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Request>
         */
        typedef Ros2Franka_spine_msgsSrvGetParameters_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_spine_msgsSrvGetParameters.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Response>
         */
        typedef Ros2Franka_spine_msgsSrvGetParameters_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_spine_msgsSrvGetParameters request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsSrvGetParameters request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_spine_msgsSrvGetParameters ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_spine_msgsSrvGetParameters.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvGetParametersBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_spine_msgsSrvGetParametersBinding> Ros2Franka_spine_msgsSrvGetParametersClient;
    /**
     * @brief Owning typed service server for Ros2Franka_spine_msgsSrvGetParameters.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvGetParametersBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_spine_msgsSrvGetParametersBinding> Ros2Franka_spine_msgsSrvGetParametersServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsSrvGetPosition.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_call
     */
    struct Ros2Franka_spine_msgsSrvGetPositionBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_spine_msgsSrvGetPosition.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Request>
         */
        typedef Ros2Franka_spine_msgsSrvGetPosition_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_spine_msgsSrvGetPosition.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Response>
         */
        typedef Ros2Franka_spine_msgsSrvGetPosition_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_spine_msgsSrvGetPosition request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsSrvGetPosition request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_spine_msgsSrvGetPosition ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_spine_msgsSrvGetPosition.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvGetPositionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_spine_msgsSrvGetPositionBinding> Ros2Franka_spine_msgsSrvGetPositionClient;
    /**
     * @brief Owning typed service server for Ros2Franka_spine_msgsSrvGetPosition.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvGetPositionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_spine_msgsSrvGetPositionBinding> Ros2Franka_spine_msgsSrvGetPositionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsSrvGetSpineState.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_call
     */
    struct Ros2Franka_spine_msgsSrvGetSpineStateBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_spine_msgsSrvGetSpineState.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Request>
         */
        typedef Ros2Franka_spine_msgsSrvGetSpineState_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_spine_msgsSrvGetSpineState.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Response>
         */
        typedef Ros2Franka_spine_msgsSrvGetSpineState_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_spine_msgsSrvGetSpineState request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsSrvGetSpineState request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_spine_msgsSrvGetSpineState ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_spine_msgsSrvGetSpineState.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvGetSpineStateBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_spine_msgsSrvGetSpineStateBinding> Ros2Franka_spine_msgsSrvGetSpineStateClient;
    /**
     * @brief Owning typed service server for Ros2Franka_spine_msgsSrvGetSpineState.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvGetSpineStateBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_spine_msgsSrvGetSpineStateBinding> Ros2Franka_spine_msgsSrvGetSpineStateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsSrvHalt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_call
     */
    struct Ros2Franka_spine_msgsSrvHaltBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_spine_msgsSrvHalt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Request>
         */
        typedef Ros2Franka_spine_msgsSrvHalt_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_spine_msgsSrvHalt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Response>
         */
        typedef Ros2Franka_spine_msgsSrvHalt_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_spine_msgsSrvHalt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsSrvHalt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_spine_msgsSrvHalt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_Halt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_spine_msgsSrvHalt.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvHaltBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_spine_msgsSrvHaltBinding> Ros2Franka_spine_msgsSrvHaltClient;
    /**
     * @brief Owning typed service server for Ros2Franka_spine_msgsSrvHalt.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvHaltBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_spine_msgsSrvHaltBinding> Ros2Franka_spine_msgsSrvHaltServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsSrvSwitchOff.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_call
     */
    struct Ros2Franka_spine_msgsSrvSwitchOffBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_spine_msgsSrvSwitchOff.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Request>
         */
        typedef Ros2Franka_spine_msgsSrvSwitchOff_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_spine_msgsSrvSwitchOff.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Response>
         */
        typedef Ros2Franka_spine_msgsSrvSwitchOff_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_spine_msgsSrvSwitchOff request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsSrvSwitchOff request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_spine_msgsSrvSwitchOff ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_spine_msgsSrvSwitchOff.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvSwitchOffBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_spine_msgsSrvSwitchOffBinding> Ros2Franka_spine_msgsSrvSwitchOffClient;
    /**
     * @brief Owning typed service server for Ros2Franka_spine_msgsSrvSwitchOff.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvSwitchOffBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_spine_msgsSrvSwitchOffBinding> Ros2Franka_spine_msgsSrvSwitchOffServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON 1

    /**
     * @brief Exact C operation binding for Ros2Franka_spine_msgsSrvSwitchOn.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_call
     */
    struct Ros2Franka_spine_msgsSrvSwitchOnBinding
    {
        /**
         * @brief Complete request record for Ros2Franka_spine_msgsSrvSwitchOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Request>
         */
        typedef Ros2Franka_spine_msgsSrvSwitchOn_Request Request;
        /**
         * @brief Complete response record for Ros2Franka_spine_msgsSrvSwitchOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Response>
         */
        typedef Ros2Franka_spine_msgsSrvSwitchOn_Response Response;

        /**
         * @brief Issue one complete Ros2Franka_spine_msgsSrvSwitchOn request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Franka_spine_msgsSrvSwitchOn request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Franka_spine_msgsSrvSwitchOn ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Franka_spine_msgsSrvSwitchOn.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvSwitchOnBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Franka_spine_msgsSrvSwitchOnBinding> Ros2Franka_spine_msgsSrvSwitchOnClient;
    /**
     * @brief Owning typed service server for Ros2Franka_spine_msgsSrvSwitchOn.
     * @details Binds every operation to Ros2Franka_spine_msgsSrvSwitchOnBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Franka_spine_msgsSrvSwitchOnBinding> Ros2Franka_spine_msgsSrvSwitchOnServer;
#endif
}  // namespace uwvm_custom
