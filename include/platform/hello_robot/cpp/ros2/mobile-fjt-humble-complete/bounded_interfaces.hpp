/** @file Complete typed Service/Action owners for the selected C++ profile. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/vendor.hpp>
#include "bounded_interfaces.h"
#include "bounded_records.hpp"

namespace uwvm_custom
{
#ifndef ROSWASM_CPP_VENDOR_COMMON_NAMESPACE
# define ROSWASM_CPP_VENDOR_COMMON_NAMESPACE 1

    /** @brief
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

    /** @brief
     * @brief Common stationary owner for independent advertise/respond roles.
     * @details Aliases the shared C++ foundation owner; it retains each actual Host handle separately
     * and exposes checked construction/cleanup reports. Neither selecting this type nor constructing a
     * binding grants rights.
     * @see roswasmcpp::vendor_detail::ServerOwners
     */
    typedef ::roswasmcpp::vendor_detail::ServerOwners ServerOwners;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY 1

    /** @brief
     * @brief Exact C operation binding for Ros2Control_msgsActionFollowJointTrajectory.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send
     */
    struct Ros2Control_msgsActionFollowJointTrajectoryBinding
    {
        /** @brief
         * @brief Complete goal record for Ros2Control_msgsActionFollowJointTrajectory.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Goal>
         */
        typedef Ros2Control_msgsActionFollowJointTrajectory_Goal Goal;
        /** @brief
         * @brief Complete result record for Ros2Control_msgsActionFollowJointTrajectory.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Result>
         */
        typedef Ros2Control_msgsActionFollowJointTrajectory_Result Result;
        /** @brief
         * @brief Complete feedback record for Ros2Control_msgsActionFollowJointTrajectory.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Control_msgsActionFollowJointTrajectory_Feedback>
         */
        typedef Ros2Control_msgsActionFollowJointTrajectory_Feedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros2Control_msgsActionFollowJointTrajectory goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros2Control_msgsActionFollowJointTrajectory goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros2Control_msgsActionFollowJointTrajectory result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros2Control_msgsActionFollowJointTrajectory server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros2Control_msgsActionFollowJointTrajectory.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros2Control_msgsActionFollowJointTrajectory.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros2Control_msgsActionFollowJointTrajectory.
     * @details Binds every operation to Ros2Control_msgsActionFollowJointTrajectoryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Control_msgsActionFollowJointTrajectoryBinding> Ros2Control_msgsActionFollowJointTrajectoryClient;
    /** @brief
     * @brief Owning typed action server for Ros2Control_msgsActionFollowJointTrajectory.
     * @details Binds every operation to Ros2Control_msgsActionFollowJointTrajectoryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Control_msgsActionFollowJointTrajectoryBinding> Ros2Control_msgsActionFollowJointTrajectoryServer;
#endif
}  // namespace uwvm_custom
