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
#include <flexiv/c/ros2/flexiv-ros2-lyrical-v1-complete/bounded_interfaces.h>
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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsActionErrorRecovery.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_send
     */
    struct Ros2Flexiv_msgsActionErrorRecoveryBinding
    {
        /**
         * @brief Complete goal record for Ros2Flexiv_msgsActionErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal>
         */
        typedef Ros2Flexiv_msgsActionErrorRecovery_Goal Goal;
        /**
         * @brief Complete result record for Ros2Flexiv_msgsActionErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Result>
         */
        typedef Ros2Flexiv_msgsActionErrorRecovery_Result Result;
        /**
         * @brief Complete feedback record for Ros2Flexiv_msgsActionErrorRecovery.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Feedback>
         */
        typedef Ros2Flexiv_msgsActionErrorRecovery_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Flexiv_msgsActionErrorRecovery goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Flexiv_msgsActionErrorRecovery goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Flexiv_msgsActionErrorRecovery result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsActionErrorRecovery server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Flexiv_msgsActionErrorRecovery.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Flexiv_msgsActionErrorRecovery.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Flexiv_msgsActionErrorRecovery.
     * @details Binds every operation to Ros2Flexiv_msgsActionErrorRecoveryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Flexiv_msgsActionErrorRecoveryBinding> Ros2Flexiv_msgsActionErrorRecoveryClient;
    /**
     * @brief Owning typed action server for Ros2Flexiv_msgsActionErrorRecovery.
     * @details Binds every operation to Ros2Flexiv_msgsActionErrorRecoveryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Flexiv_msgsActionErrorRecoveryBinding> Ros2Flexiv_msgsActionErrorRecoveryServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsActionGrasp.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_send
     */
    struct Ros2Flexiv_msgsActionGraspBinding
    {
        /**
         * @brief Complete goal record for Ros2Flexiv_msgsActionGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal>
         */
        typedef Ros2Flexiv_msgsActionGrasp_Goal Goal;
        /**
         * @brief Complete result record for Ros2Flexiv_msgsActionGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result>
         */
        typedef Ros2Flexiv_msgsActionGrasp_Result Result;
        /**
         * @brief Complete feedback record for Ros2Flexiv_msgsActionGrasp.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback>
         */
        typedef Ros2Flexiv_msgsActionGrasp_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Flexiv_msgsActionGrasp goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Flexiv_msgsActionGrasp goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Flexiv_msgsActionGrasp result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsActionGrasp server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Flexiv_msgsActionGrasp.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Flexiv_msgsActionGrasp.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Flexiv_msgsActionGrasp.
     * @details Binds every operation to Ros2Flexiv_msgsActionGraspBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Flexiv_msgsActionGraspBinding> Ros2Flexiv_msgsActionGraspClient;
    /**
     * @brief Owning typed action server for Ros2Flexiv_msgsActionGrasp.
     * @details Binds every operation to Ros2Flexiv_msgsActionGraspBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Flexiv_msgsActionGraspBinding> Ros2Flexiv_msgsActionGraspServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsActionMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_send
     */
    struct Ros2Flexiv_msgsActionMoveBinding
    {
        /**
         * @brief Complete goal record for Ros2Flexiv_msgsActionMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Goal>
         */
        typedef Ros2Flexiv_msgsActionMove_Goal Goal;
        /**
         * @brief Complete result record for Ros2Flexiv_msgsActionMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Result>
         */
        typedef Ros2Flexiv_msgsActionMove_Result Result;
        /**
         * @brief Complete feedback record for Ros2Flexiv_msgsActionMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback>
         */
        typedef Ros2Flexiv_msgsActionMove_Feedback Feedback;

        /**
         * @brief Send and locally track one Ros2Flexiv_msgsActionMove goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros2Flexiv_msgsActionMove goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros2Flexiv_msgsActionMove result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsActionMove server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros2Flexiv_msgsActionMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros2Flexiv_msgsActionMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros2Flexiv_msgsActionMove.
     * @details Binds every operation to Ros2Flexiv_msgsActionMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Flexiv_msgsActionMoveBinding> Ros2Flexiv_msgsActionMoveClient;
    /**
     * @brief Owning typed action server for Ros2Flexiv_msgsActionMove.
     * @details Binds every operation to Ros2Flexiv_msgsActionMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Flexiv_msgsActionMoveBinding> Ros2Flexiv_msgsActionMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvGetOperationalStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_call
     */
    struct Ros2Flexiv_msgsSrvGetOperationalStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvGetOperationalStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Request>
         */
        typedef Ros2Flexiv_msgsSrvGetOperationalStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvGetOperationalStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Response>
         */
        typedef Ros2Flexiv_msgsSrvGetOperationalStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvGetOperationalStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvGetOperationalStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvGetOperationalStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvGetOperationalStatus.
     * @details Binds every operation to Ros2Flexiv_msgsSrvGetOperationalStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvGetOperationalStatusBinding> Ros2Flexiv_msgsSrvGetOperationalStatusClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvGetOperationalStatus.
     * @details Binds every operation to Ros2Flexiv_msgsSrvGetOperationalStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvGetOperationalStatusBinding> Ros2Flexiv_msgsSrvGetOperationalStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetCartesianImpedance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_call
     */
    struct Ros2Flexiv_msgsSrvSetCartesianImpedanceBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetCartesianImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetCartesianImpedance_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetCartesianImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetCartesianImpedance_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetCartesianImpedance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetCartesianImpedance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetCartesianImpedance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetCartesianImpedance.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetCartesianImpedanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetCartesianImpedanceBinding> Ros2Flexiv_msgsSrvSetCartesianImpedanceClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetCartesianImpedance.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetCartesianImpedanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetCartesianImpedanceBinding> Ros2Flexiv_msgsSrvSetCartesianImpedanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetCartesianMotionLimits.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_call
     */
    struct Ros2Flexiv_msgsSrvSetCartesianMotionLimitsBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetCartesianMotionLimits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetCartesianMotionLimits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetCartesianMotionLimits request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetCartesianMotionLimits request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetCartesianMotionLimits ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetCartesianMotionLimits.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetCartesianMotionLimitsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetCartesianMotionLimitsBinding> Ros2Flexiv_msgsSrvSetCartesianMotionLimitsClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetCartesianMotionLimits.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetCartesianMotionLimitsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetCartesianMotionLimitsBinding> Ros2Flexiv_msgsSrvSetCartesianMotionLimitsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetForceControlAxis.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_call
     */
    struct Ros2Flexiv_msgsSrvSetForceControlAxisBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetForceControlAxis.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetForceControlAxis_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetForceControlAxis.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetForceControlAxis_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetForceControlAxis request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetForceControlAxis request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetForceControlAxis ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetForceControlAxis.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetForceControlAxisBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetForceControlAxisBinding> Ros2Flexiv_msgsSrvSetForceControlAxisClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetForceControlAxis.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetForceControlAxisBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetForceControlAxisBinding> Ros2Flexiv_msgsSrvSetForceControlAxisServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetForceControlFrame.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_call
     */
    struct Ros2Flexiv_msgsSrvSetForceControlFrameBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetForceControlFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetForceControlFrame_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetForceControlFrame.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetForceControlFrame_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetForceControlFrame request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetForceControlFrame request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetForceControlFrame ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetForceControlFrame.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetForceControlFrameBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetForceControlFrameBinding> Ros2Flexiv_msgsSrvSetForceControlFrameClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetForceControlFrame.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetForceControlFrameBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetForceControlFrameBinding> Ros2Flexiv_msgsSrvSetForceControlFrameServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetJointImpedance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_call
     */
    struct Ros2Flexiv_msgsSrvSetJointImpedanceBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetJointImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetJointImpedance_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetJointImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetJointImpedance_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetJointImpedance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetJointImpedance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetJointImpedance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetJointImpedance.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetJointImpedanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetJointImpedanceBinding> Ros2Flexiv_msgsSrvSetJointImpedanceClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetJointImpedance.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetJointImpedanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetJointImpedanceBinding> Ros2Flexiv_msgsSrvSetJointImpedanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetJointInertiaScale.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_call
     */
    struct Ros2Flexiv_msgsSrvSetJointInertiaScaleBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetJointInertiaScale.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetJointInertiaScale_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetJointInertiaScale.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetJointInertiaScale_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetJointInertiaScale request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetJointInertiaScale request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetJointInertiaScale ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetJointInertiaScale.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetJointInertiaScaleBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetJointInertiaScaleBinding> Ros2Flexiv_msgsSrvSetJointInertiaScaleClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetJointInertiaScale.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetJointInertiaScaleBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetJointInertiaScaleBinding> Ros2Flexiv_msgsSrvSetJointInertiaScaleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetMaxContactTorque.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_call
     */
    struct Ros2Flexiv_msgsSrvSetMaxContactTorqueBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetMaxContactTorque.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetMaxContactTorque_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetMaxContactTorque.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetMaxContactTorque_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetMaxContactTorque request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetMaxContactTorque request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetMaxContactTorque ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetMaxContactTorque.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetMaxContactTorqueBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetMaxContactTorqueBinding> Ros2Flexiv_msgsSrvSetMaxContactTorqueClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetMaxContactTorque.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetMaxContactTorqueBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetMaxContactTorqueBinding> Ros2Flexiv_msgsSrvSetMaxContactTorqueServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetMaxContactWrench.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_call
     */
    struct Ros2Flexiv_msgsSrvSetMaxContactWrenchBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetMaxContactWrench.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetMaxContactWrench_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetMaxContactWrench.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetMaxContactWrench_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetMaxContactWrench request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetMaxContactWrench request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetMaxContactWrench ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetMaxContactWrench.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetMaxContactWrenchBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetMaxContactWrenchBinding> Ros2Flexiv_msgsSrvSetMaxContactWrenchClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetMaxContactWrench.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetMaxContactWrenchBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetMaxContactWrenchBinding> Ros2Flexiv_msgsSrvSetMaxContactWrenchServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetNullSpaceObjectives.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_call
     */
    struct Ros2Flexiv_msgsSrvSetNullSpaceObjectivesBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetNullSpaceObjectives.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetNullSpaceObjectives.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetNullSpaceObjectives request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetNullSpaceObjectives request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetNullSpaceObjectives ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetNullSpaceObjectives.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetNullSpaceObjectivesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetNullSpaceObjectivesBinding> Ros2Flexiv_msgsSrvSetNullSpaceObjectivesClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetNullSpaceObjectives.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetNullSpaceObjectivesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetNullSpaceObjectivesBinding> Ros2Flexiv_msgsSrvSetNullSpaceObjectivesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetNullSpacePosture.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_call
     */
    struct Ros2Flexiv_msgsSrvSetNullSpacePostureBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetNullSpacePosture.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetNullSpacePosture_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetNullSpacePosture.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetNullSpacePosture_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetNullSpacePosture request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetNullSpacePosture request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetNullSpacePosture ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetNullSpacePosture.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetNullSpacePostureBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetNullSpacePostureBinding> Ros2Flexiv_msgsSrvSetNullSpacePostureClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetNullSpacePosture.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetNullSpacePostureBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetNullSpacePostureBinding> Ros2Flexiv_msgsSrvSetNullSpacePostureServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL 1

    /**
     * @brief Exact C operation binding for Ros2Flexiv_msgsSrvSetPassiveForceControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_call
     */
    struct Ros2Flexiv_msgsSrvSetPassiveForceControlBinding
    {
        /**
         * @brief Complete request record for Ros2Flexiv_msgsSrvSetPassiveForceControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Request>
         */
        typedef Ros2Flexiv_msgsSrvSetPassiveForceControl_Request Request;
        /**
         * @brief Complete response record for Ros2Flexiv_msgsSrvSetPassiveForceControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Response>
         */
        typedef Ros2Flexiv_msgsSrvSetPassiveForceControl_Response Response;

        /**
         * @brief Issue one complete Ros2Flexiv_msgsSrvSetPassiveForceControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Flexiv_msgsSrvSetPassiveForceControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Flexiv_msgsSrvSetPassiveForceControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Flexiv_msgsSrvSetPassiveForceControl.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetPassiveForceControlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Flexiv_msgsSrvSetPassiveForceControlBinding> Ros2Flexiv_msgsSrvSetPassiveForceControlClient;
    /**
     * @brief Owning typed service server for Ros2Flexiv_msgsSrvSetPassiveForceControl.
     * @details Binds every operation to Ros2Flexiv_msgsSrvSetPassiveForceControlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Flexiv_msgsSrvSetPassiveForceControlBinding> Ros2Flexiv_msgsSrvSetPassiveForceControlServer;
#endif
}  // namespace uwvm_custom
