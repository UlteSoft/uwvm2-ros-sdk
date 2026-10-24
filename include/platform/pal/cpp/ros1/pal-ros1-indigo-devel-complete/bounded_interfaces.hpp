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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOUREVENT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_behaviour_msgsBehaviourEvent.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_call
     */
    struct Ros1Pal_behaviour_msgsBehaviourEventBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_behaviour_msgsBehaviourEvent.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventRequest>
         */
        typedef Ros1Pal_behaviour_msgsBehaviourEventRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_behaviour_msgsBehaviourEvent.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventResponse>
         */
        typedef Ros1Pal_behaviour_msgsBehaviourEventResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_behaviour_msgsBehaviourEvent request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_behaviour_msgsBehaviourEvent request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_behaviour_msgsBehaviourEvent ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEvent_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_behaviour_msgsBehaviourEvent.
     * @details Binds every operation to Ros1Pal_behaviour_msgsBehaviourEventBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_behaviour_msgsBehaviourEventBinding> Ros1Pal_behaviour_msgsBehaviourEventClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_behaviour_msgsBehaviourEvent.
     * @details Binds every operation to Ros1Pal_behaviour_msgsBehaviourEventBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_behaviour_msgsBehaviourEventBinding> Ros1Pal_behaviour_msgsBehaviourEventServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_BEHAVIOURTASK 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_behaviour_msgsBehaviourTask.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_send
     */
    struct Ros1Pal_behaviour_msgsBehaviourTaskBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_behaviour_msgsBehaviourTask.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskGoal>
         */
        typedef Ros1Pal_behaviour_msgsBehaviourTaskGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_behaviour_msgsBehaviourTask.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskResult>
         */
        typedef Ros1Pal_behaviour_msgsBehaviourTaskResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_behaviour_msgsBehaviourTask.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskFeedback>
         */
        typedef Ros1Pal_behaviour_msgsBehaviourTaskFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_behaviour_msgsBehaviourTask goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_behaviour_msgsBehaviourTask goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_behaviour_msgsBehaviourTask result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_behaviour_msgsBehaviourTask server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_behaviour_msgsBehaviourTask.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_behaviour_msgsBehaviourTask.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTask_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_behaviour_msgsBehaviourTask.
     * @details Binds every operation to Ros1Pal_behaviour_msgsBehaviourTaskBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_behaviour_msgsBehaviourTaskBinding> Ros1Pal_behaviour_msgsBehaviourTaskClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_behaviour_msgsBehaviourTask.
     * @details Binds every operation to Ros1Pal_behaviour_msgsBehaviourTaskBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_behaviour_msgsBehaviourTaskBinding> Ros1Pal_behaviour_msgsBehaviourTaskServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_BEHAVIOUR_MSGS_PRESENTATION 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_behaviour_msgsPresentation.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_behaviour_msgs_Presentation_send
     */
    struct Ros1Pal_behaviour_msgsPresentationBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_behaviour_msgsPresentation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsPresentationGoal>
         */
        typedef Ros1Pal_behaviour_msgsPresentationGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_behaviour_msgsPresentation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsPresentationResult>
         */
        typedef Ros1Pal_behaviour_msgsPresentationResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_behaviour_msgsPresentation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_behaviour_msgsPresentationFeedback>
         */
        typedef Ros1Pal_behaviour_msgsPresentationFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_behaviour_msgsPresentation goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_Presentation_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_behaviour_msgsPresentation goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_Presentation_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_behaviour_msgsPresentation result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_Presentation_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_behaviour_msgsPresentation server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_Presentation_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_behaviour_msgsPresentation.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_behaviour_msgsPresentation.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_Presentation_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_behaviour_msgsPresentation.
     * @details Binds every operation to Ros1Pal_behaviour_msgsPresentationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_behaviour_msgsPresentationBinding> Ros1Pal_behaviour_msgsPresentationClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_behaviour_msgsPresentation.
     * @details Binds every operation to Ros1Pal_behaviour_msgsPresentationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_behaviour_msgsPresentationBinding> Ros1Pal_behaviour_msgsPresentationServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_DISABLE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_common_msgsDisable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_common_msgs_Disable_send
     */
    struct Ros1Pal_common_msgsDisableBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_common_msgsDisable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsDisableGoal>
         */
        typedef Ros1Pal_common_msgsDisableGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_common_msgsDisable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsDisableResult>
         */
        typedef Ros1Pal_common_msgsDisableResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_common_msgsDisable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsDisableFeedback>
         */
        typedef Ros1Pal_common_msgsDisableFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_common_msgsDisable goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_common_msgs_Disable_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_common_msgsDisable goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_common_msgs_Disable_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_common_msgsDisable result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_common_msgs_Disable_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_common_msgsDisable server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_common_msgs_Disable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_common_msgsDisable.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_common_msgs_Disable_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_common_msgsDisable.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_common_msgs_Disable_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Disable_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_common_msgs_DisableResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_DisableResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_common_msgs_DisableFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_DisableFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_common_msgsDisable.
     * @details Binds every operation to Ros1Pal_common_msgsDisableBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_common_msgsDisableBinding> Ros1Pal_common_msgsDisableClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_common_msgsDisable.
     * @details Binds every operation to Ros1Pal_common_msgsDisableBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_common_msgsDisableBinding> Ros1Pal_common_msgsDisableServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_EMPTY 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_common_msgsEmpty.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_common_msgs_Empty_send
     */
    struct Ros1Pal_common_msgsEmptyBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_common_msgsEmpty.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsEmptyGoal>
         */
        typedef Ros1Pal_common_msgsEmptyGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_common_msgsEmpty.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsEmptyResult>
         */
        typedef Ros1Pal_common_msgsEmptyResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_common_msgsEmpty.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsEmptyFeedback>
         */
        typedef Ros1Pal_common_msgsEmptyFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_common_msgsEmpty goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_common_msgs_Empty_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_common_msgsEmpty goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_common_msgs_Empty_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_common_msgsEmpty result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_common_msgs_Empty_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_common_msgsEmpty server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_common_msgs_Empty_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_common_msgsEmpty.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_common_msgs_Empty_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_common_msgsEmpty.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_common_msgs_Empty_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_Empty_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_common_msgs_EmptyResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_EmptyResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_common_msgsEmpty.
     * @details Binds every operation to Ros1Pal_common_msgsEmptyBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_common_msgsEmptyBinding> Ros1Pal_common_msgsEmptyClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_common_msgsEmpty.
     * @details Binds every operation to Ros1Pal_common_msgsEmptyBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_common_msgsEmptyBinding> Ros1Pal_common_msgsEmptyServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_GETSTRING 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_common_msgsGetString.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_common_msgs_GetString_call
     */
    struct Ros1Pal_common_msgsGetStringBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_common_msgsGetString.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsGetStringRequest>
         */
        typedef Ros1Pal_common_msgsGetStringRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_common_msgsGetString.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsGetStringResponse>
         */
        typedef Ros1Pal_common_msgsGetStringResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_common_msgsGetString request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_common_msgs_GetString_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_common_msgs_GetString_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_common_msgsGetString request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_common_msgs_GetString_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_common_msgs_GetString_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_common_msgsGetString ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_common_msgs_GetString_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_common_msgs_GetString_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_common_msgsGetString.
     * @details Binds every operation to Ros1Pal_common_msgsGetStringBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_common_msgsGetStringBinding> Ros1Pal_common_msgsGetStringClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_common_msgsGetString.
     * @details Binds every operation to Ros1Pal_common_msgsGetStringBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_common_msgsGetStringBinding> Ros1Pal_common_msgsGetStringServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_COMMON_MSGS_SETSTRING 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_common_msgsSetString.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_common_msgs_SetString_call
     */
    struct Ros1Pal_common_msgsSetStringBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_common_msgsSetString.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsSetStringRequest>
         */
        typedef Ros1Pal_common_msgsSetStringRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_common_msgsSetString.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_common_msgsSetStringResponse>
         */
        typedef Ros1Pal_common_msgsSetStringResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_common_msgsSetString request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_common_msgs_SetString_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_common_msgs_SetString_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_common_msgsSetString request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_common_msgs_SetString_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_common_msgs_SetString_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_common_msgsSetString ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_common_msgs_SetString_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_common_msgs_SetString_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_common_msgsSetString.
     * @details Binds every operation to Ros1Pal_common_msgsSetStringBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_common_msgsSetStringBinding> Ros1Pal_common_msgsSetStringClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_common_msgsSetString.
     * @details Binds every operation to Ros1Pal_common_msgsSetStringBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_common_msgsSetStringBinding> Ros1Pal_common_msgsSetStringServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_CURRENTLIMIT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_control_msgsCurrentLimit.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_control_msgs_CurrentLimit_call
     */
    struct Ros1Pal_control_msgsCurrentLimitBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_control_msgsCurrentLimit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsCurrentLimitRequest>
         */
        typedef Ros1Pal_control_msgsCurrentLimitRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_control_msgsCurrentLimit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsCurrentLimitResponse>
         */
        typedef Ros1Pal_control_msgsCurrentLimitResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_control_msgsCurrentLimit request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_control_msgs_CurrentLimit_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_control_msgs_CurrentLimit_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_control_msgsCurrentLimit request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_control_msgs_CurrentLimit_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_control_msgs_CurrentLimit_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_control_msgsCurrentLimit ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_control_msgs_CurrentLimit_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_control_msgs_CurrentLimit_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_control_msgsCurrentLimit.
     * @details Binds every operation to Ros1Pal_control_msgsCurrentLimitBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_control_msgsCurrentLimitBinding> Ros1Pal_control_msgsCurrentLimitClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_control_msgsCurrentLimit.
     * @details Binds every operation to Ros1Pal_control_msgsCurrentLimitBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_control_msgsCurrentLimitBinding> Ros1Pal_control_msgsCurrentLimitServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_MOTIONMANAGER 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_control_msgsMotionManager.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_control_msgs_MotionManager_send
     */
    struct Ros1Pal_control_msgsMotionManagerBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_control_msgsMotionManager.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsMotionManagerGoal>
         */
        typedef Ros1Pal_control_msgsMotionManagerGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_control_msgsMotionManager.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsMotionManagerResult>
         */
        typedef Ros1Pal_control_msgsMotionManagerResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_control_msgsMotionManager.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsMotionManagerFeedback>
         */
        typedef Ros1Pal_control_msgsMotionManagerFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_control_msgsMotionManager goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManager_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_control_msgsMotionManager goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManager_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_control_msgsMotionManager result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManager_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_control_msgsMotionManager server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManager_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_control_msgsMotionManager.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_control_msgsMotionManager.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManager_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_control_msgsMotionManager.
     * @details Binds every operation to Ros1Pal_control_msgsMotionManagerBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_control_msgsMotionManagerBinding> Ros1Pal_control_msgsMotionManagerClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_control_msgsMotionManager.
     * @details Binds every operation to Ros1Pal_control_msgsMotionManagerBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_control_msgsMotionManagerBinding> Ros1Pal_control_msgsMotionManagerServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_CONTROL_MSGS_RIGIDBODYTRAJECTORY 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_control_msgsRigidBodyTrajectory.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_send
     */
    struct Ros1Pal_control_msgsRigidBodyTrajectoryBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_control_msgsRigidBodyTrajectory.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryGoal>
         */
        typedef Ros1Pal_control_msgsRigidBodyTrajectoryGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_control_msgsRigidBodyTrajectory.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryResult>
         */
        typedef Ros1Pal_control_msgsRigidBodyTrajectoryResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_control_msgsRigidBodyTrajectory.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryFeedback>
         */
        typedef Ros1Pal_control_msgsRigidBodyTrajectoryFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_control_msgsRigidBodyTrajectory goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_control_msgsRigidBodyTrajectory goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_control_msgsRigidBodyTrajectory result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_control_msgsRigidBodyTrajectory server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_control_msgsRigidBodyTrajectory.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_control_msgsRigidBodyTrajectory.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectory_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_control_msgsRigidBodyTrajectory.
     * @details Binds every operation to Ros1Pal_control_msgsRigidBodyTrajectoryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_control_msgsRigidBodyTrajectoryBinding> Ros1Pal_control_msgsRigidBodyTrajectoryClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_control_msgsRigidBodyTrajectory.
     * @details Binds every operation to Ros1Pal_control_msgsRigidBodyTrajectoryBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_control_msgsRigidBodyTrajectoryBinding> Ros1Pal_control_msgsRigidBodyTrajectoryServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_ADDTEXTUREDOBJECT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsAddTexturedObject.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_call
     */
    struct Ros1Pal_detection_msgsAddTexturedObjectBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_detection_msgsAddTexturedObject.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectRequest>
         */
        typedef Ros1Pal_detection_msgsAddTexturedObjectRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_detection_msgsAddTexturedObject.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectResponse>
         */
        typedef Ros1Pal_detection_msgsAddTexturedObjectResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_detection_msgsAddTexturedObject request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsAddTexturedObject request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_detection_msgsAddTexturedObject ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_AddTexturedObject_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_detection_msgsAddTexturedObject.
     * @details Binds every operation to Ros1Pal_detection_msgsAddTexturedObjectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_detection_msgsAddTexturedObjectBinding> Ros1Pal_detection_msgsAddTexturedObjectClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_detection_msgsAddTexturedObject.
     * @details Binds every operation to Ros1Pal_detection_msgsAddTexturedObjectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_detection_msgsAddTexturedObjectBinding> Ros1Pal_detection_msgsAddTexturedObjectServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_CHANGEOBJECTRECOGNIZERMODEL 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsChangeObjectRecognizerModel.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_call
     */
    struct Ros1Pal_detection_msgsChangeObjectRecognizerModelBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_detection_msgsChangeObjectRecognizerModel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest>
         */
        typedef Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_detection_msgsChangeObjectRecognizerModel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse>
         */
        typedef Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_detection_msgsChangeObjectRecognizerModel request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsChangeObjectRecognizerModel request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_detection_msgsChangeObjectRecognizerModel ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModel_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_detection_msgsChangeObjectRecognizerModel.
     * @details Binds every operation to Ros1Pal_detection_msgsChangeObjectRecognizerModelBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_detection_msgsChangeObjectRecognizerModelBinding>
        Ros1Pal_detection_msgsChangeObjectRecognizerModelClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_detection_msgsChangeObjectRecognizerModel.
     * @details Binds every operation to Ros1Pal_detection_msgsChangeObjectRecognizerModelBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_detection_msgsChangeObjectRecognizerModelBinding>
        Ros1Pal_detection_msgsChangeObjectRecognizerModelServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZEOBJECTS 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsRecognizeObjects.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_send
     */
    struct Ros1Pal_detection_msgsRecognizeObjectsBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_detection_msgsRecognizeObjects.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsGoal>
         */
        typedef Ros1Pal_detection_msgsRecognizeObjectsGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_detection_msgsRecognizeObjects.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsResult>
         */
        typedef Ros1Pal_detection_msgsRecognizeObjectsResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_detection_msgsRecognizeObjects.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsFeedback>
         */
        typedef Ros1Pal_detection_msgsRecognizeObjectsFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_detection_msgsRecognizeObjects goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_detection_msgsRecognizeObjects goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_detection_msgsRecognizeObjects result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsRecognizeObjects server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_detection_msgsRecognizeObjects.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_detection_msgsRecognizeObjects.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjects_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_detection_msgsRecognizeObjects.
     * @details Binds every operation to Ros1Pal_detection_msgsRecognizeObjectsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_detection_msgsRecognizeObjectsBinding> Ros1Pal_detection_msgsRecognizeObjectsClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_detection_msgsRecognizeObjects.
     * @details Binds every operation to Ros1Pal_detection_msgsRecognizeObjectsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_detection_msgsRecognizeObjectsBinding> Ros1Pal_detection_msgsRecognizeObjectsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_RECOGNIZER 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsRecognizer.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_Recognizer_call
     */
    struct Ros1Pal_detection_msgsRecognizerBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_detection_msgsRecognizer.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizerRequest>
         */
        typedef Ros1Pal_detection_msgsRecognizerRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_detection_msgsRecognizer.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizerResponse>
         */
        typedef Ros1Pal_detection_msgsRecognizerResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_detection_msgsRecognizer request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_detection_msgs_Recognizer_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_Recognizer_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsRecognizer request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_Recognizer_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_detection_msgs_Recognizer_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_detection_msgsRecognizer ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_Recognizer_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_Recognizer_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_detection_msgsRecognizer.
     * @details Binds every operation to Ros1Pal_detection_msgsRecognizerBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_detection_msgsRecognizerBinding> Ros1Pal_detection_msgsRecognizerClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_detection_msgsRecognizer.
     * @details Binds every operation to Ros1Pal_detection_msgsRecognizerBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_detection_msgsRecognizerBinding> Ros1Pal_detection_msgsRecognizerServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SELECTTEXTUREDOBJECT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsSelectTexturedObject.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_call
     */
    struct Ros1Pal_detection_msgsSelectTexturedObjectBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_detection_msgsSelectTexturedObject.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectRequest>
         */
        typedef Ros1Pal_detection_msgsSelectTexturedObjectRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_detection_msgsSelectTexturedObject.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectResponse>
         */
        typedef Ros1Pal_detection_msgsSelectTexturedObjectResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_detection_msgsSelectTexturedObject request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsSelectTexturedObject request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_detection_msgsSelectTexturedObject ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObject_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_detection_msgsSelectTexturedObject.
     * @details Binds every operation to Ros1Pal_detection_msgsSelectTexturedObjectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_detection_msgsSelectTexturedObjectBinding> Ros1Pal_detection_msgsSelectTexturedObjectClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_detection_msgsSelectTexturedObject.
     * @details Binds every operation to Ros1Pal_detection_msgsSelectTexturedObjectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_detection_msgsSelectTexturedObjectBinding> Ros1Pal_detection_msgsSelectTexturedObjectServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_SETDATABASE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsSetDatabase.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_SetDatabase_call
     */
    struct Ros1Pal_detection_msgsSetDatabaseBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_detection_msgsSetDatabase.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsSetDatabaseRequest>
         */
        typedef Ros1Pal_detection_msgsSetDatabaseRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_detection_msgsSetDatabase.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsSetDatabaseResponse>
         */
        typedef Ros1Pal_detection_msgsSetDatabaseResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_detection_msgsSetDatabase request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_detection_msgs_SetDatabase_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_SetDatabase_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsSetDatabase request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_SetDatabase_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_detection_msgs_SetDatabase_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_detection_msgsSetDatabase ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_SetDatabase_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_SetDatabase_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_detection_msgsSetDatabase.
     * @details Binds every operation to Ros1Pal_detection_msgsSetDatabaseBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_detection_msgsSetDatabaseBinding> Ros1Pal_detection_msgsSetDatabaseClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_detection_msgsSetDatabase.
     * @details Binds every operation to Ros1Pal_detection_msgsSetDatabaseBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_detection_msgsSetDatabaseBinding> Ros1Pal_detection_msgsSetDatabaseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STARTENROLLMENT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsStartEnrollment.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_call
     */
    struct Ros1Pal_detection_msgsStartEnrollmentBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_detection_msgsStartEnrollment.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentRequest>
         */
        typedef Ros1Pal_detection_msgsStartEnrollmentRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_detection_msgsStartEnrollment.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentResponse>
         */
        typedef Ros1Pal_detection_msgsStartEnrollmentResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_detection_msgsStartEnrollment request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsStartEnrollment request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_detection_msgsStartEnrollment ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_StartEnrollment_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_detection_msgsStartEnrollment.
     * @details Binds every operation to Ros1Pal_detection_msgsStartEnrollmentBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_detection_msgsStartEnrollmentBinding> Ros1Pal_detection_msgsStartEnrollmentClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_detection_msgsStartEnrollment.
     * @details Binds every operation to Ros1Pal_detection_msgsStartEnrollmentBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_detection_msgsStartEnrollmentBinding> Ros1Pal_detection_msgsStartEnrollmentServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DETECTION_MSGS_STOPENROLLMENT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_detection_msgsStopEnrollment.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_call
     */
    struct Ros1Pal_detection_msgsStopEnrollmentBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_detection_msgsStopEnrollment.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentRequest>
         */
        typedef Ros1Pal_detection_msgsStopEnrollmentRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_detection_msgsStopEnrollment.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentResponse>
         */
        typedef Ros1Pal_detection_msgsStopEnrollmentResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_detection_msgsStopEnrollment request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_detection_msgsStopEnrollment request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_detection_msgsStopEnrollment ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_detection_msgs_StopEnrollment_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_detection_msgsStopEnrollment.
     * @details Binds every operation to Ros1Pal_detection_msgsStopEnrollmentBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_detection_msgsStopEnrollmentBinding> Ros1Pal_detection_msgsStopEnrollmentClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_detection_msgsStopEnrollment.
     * @details Binds every operation to Ros1Pal_detection_msgsStopEnrollmentBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_detection_msgsStopEnrollmentBinding> Ros1Pal_detection_msgsStopEnrollmentServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_CANCELEFFECT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_CANCELEFFECT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_device_msgsCancelEffect.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_device_msgs_CancelEffect_call
     */
    struct Ros1Pal_device_msgsCancelEffectBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_device_msgsCancelEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsCancelEffectRequest>
         */
        typedef Ros1Pal_device_msgsCancelEffectRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_device_msgsCancelEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsCancelEffectResponse>
         */
        typedef Ros1Pal_device_msgsCancelEffectResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_device_msgsCancelEffect request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_device_msgs_CancelEffect_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_CancelEffect_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_device_msgsCancelEffect request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_device_msgs_CancelEffect_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_device_msgs_CancelEffect_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_device_msgsCancelEffect ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_device_msgs_CancelEffect_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_CancelEffect_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_device_msgsCancelEffect.
     * @details Binds every operation to Ros1Pal_device_msgsCancelEffectBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_device_msgsCancelEffectBinding> Ros1Pal_device_msgsCancelEffectClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_device_msgsCancelEffect.
     * @details Binds every operation to Ros1Pal_device_msgsCancelEffectBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_device_msgsCancelEffectBinding> Ros1Pal_device_msgsCancelEffectServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_DOTIMEDLEDEFFECT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_DOTIMEDLEDEFFECT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_device_msgsDoTimedLedEffect.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_send
     */
    struct Ros1Pal_device_msgsDoTimedLedEffectBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_device_msgsDoTimedLedEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectGoal>
         */
        typedef Ros1Pal_device_msgsDoTimedLedEffectGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_device_msgsDoTimedLedEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectResult>
         */
        typedef Ros1Pal_device_msgsDoTimedLedEffectResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_device_msgsDoTimedLedEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectFeedback>
         */
        typedef Ros1Pal_device_msgsDoTimedLedEffectFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_device_msgsDoTimedLedEffect goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_device_msgsDoTimedLedEffect goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_device_msgsDoTimedLedEffect result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_device_msgsDoTimedLedEffect server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_device_msgsDoTimedLedEffect.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_device_msgsDoTimedLedEffect.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffect_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_device_msgsDoTimedLedEffect.
     * @details Binds every operation to Ros1Pal_device_msgsDoTimedLedEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_device_msgsDoTimedLedEffectBinding> Ros1Pal_device_msgsDoTimedLedEffectClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_device_msgsDoTimedLedEffect.
     * @details Binds every operation to Ros1Pal_device_msgsDoTimedLedEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_device_msgsDoTimedLedEffectBinding> Ros1Pal_device_msgsDoTimedLedEffectServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_SHUTDOWNANDWAKEUPROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_SHUTDOWNANDWAKEUPROBOT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_device_msgsShutdownAndWakeUpRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_call
     */
    struct Ros1Pal_device_msgsShutdownAndWakeUpRobotBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_device_msgsShutdownAndWakeUpRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest>
         */
        typedef Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_device_msgsShutdownAndWakeUpRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse>
         */
        typedef Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_device_msgsShutdownAndWakeUpRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_device_msgsShutdownAndWakeUpRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_device_msgsShutdownAndWakeUpRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobot_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_device_msgsShutdownAndWakeUpRobot.
     * @details Binds every operation to Ros1Pal_device_msgsShutdownAndWakeUpRobotBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_device_msgsShutdownAndWakeUpRobotBinding> Ros1Pal_device_msgsShutdownAndWakeUpRobotClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_device_msgsShutdownAndWakeUpRobot.
     * @details Binds every operation to Ros1Pal_device_msgsShutdownAndWakeUpRobotBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_device_msgsShutdownAndWakeUpRobotBinding> Ros1Pal_device_msgsShutdownAndWakeUpRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_TIMEDBLINKEFFECT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_TIMEDBLINKEFFECT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_device_msgsTimedBlinkEffect.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_call
     */
    struct Ros1Pal_device_msgsTimedBlinkEffectBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_device_msgsTimedBlinkEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectRequest>
         */
        typedef Ros1Pal_device_msgsTimedBlinkEffectRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_device_msgsTimedBlinkEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectResponse>
         */
        typedef Ros1Pal_device_msgsTimedBlinkEffectResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_device_msgsTimedBlinkEffect request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_device_msgsTimedBlinkEffect request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_device_msgsTimedBlinkEffect ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffect_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_device_msgsTimedBlinkEffect.
     * @details Binds every operation to Ros1Pal_device_msgsTimedBlinkEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_device_msgsTimedBlinkEffectBinding> Ros1Pal_device_msgsTimedBlinkEffectClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_device_msgsTimedBlinkEffect.
     * @details Binds every operation to Ros1Pal_device_msgsTimedBlinkEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_device_msgsTimedBlinkEffectBinding> Ros1Pal_device_msgsTimedBlinkEffectServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_TIMEDCOLOUREFFECT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_TIMEDCOLOUREFFECT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_device_msgsTimedColourEffect.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_call
     */
    struct Ros1Pal_device_msgsTimedColourEffectBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_device_msgsTimedColourEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsTimedColourEffectRequest>
         */
        typedef Ros1Pal_device_msgsTimedColourEffectRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_device_msgsTimedColourEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsTimedColourEffectResponse>
         */
        typedef Ros1Pal_device_msgsTimedColourEffectResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_device_msgsTimedColourEffect request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_device_msgsTimedColourEffect request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_device_msgsTimedColourEffect ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedColourEffect_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_device_msgsTimedColourEffect.
     * @details Binds every operation to Ros1Pal_device_msgsTimedColourEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_device_msgsTimedColourEffectBinding> Ros1Pal_device_msgsTimedColourEffectClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_device_msgsTimedColourEffect.
     * @details Binds every operation to Ros1Pal_device_msgsTimedColourEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_device_msgsTimedColourEffectBinding> Ros1Pal_device_msgsTimedColourEffectServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_TIMEDFADEEFFECT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_DEVICE_MSGS_TIMEDFADEEFFECT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_device_msgsTimedFadeEffect.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_call
     */
    struct Ros1Pal_device_msgsTimedFadeEffectBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_device_msgsTimedFadeEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectRequest>
         */
        typedef Ros1Pal_device_msgsTimedFadeEffectRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_device_msgsTimedFadeEffect.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectResponse>
         */
        typedef Ros1Pal_device_msgsTimedFadeEffectResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_device_msgsTimedFadeEffect request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_device_msgsTimedFadeEffect request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_device_msgsTimedFadeEffect ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_device_msgs_TimedFadeEffect_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_device_msgsTimedFadeEffect.
     * @details Binds every operation to Ros1Pal_device_msgsTimedFadeEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_device_msgsTimedFadeEffectBinding> Ros1Pal_device_msgsTimedFadeEffectClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_device_msgsTimedFadeEffect.
     * @details Binds every operation to Ros1Pal_device_msgsTimedFadeEffectBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_device_msgsTimedFadeEffectBinding> Ros1Pal_device_msgsTimedFadeEffectServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRFILE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsASRFile.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFile_send
     */
    struct Ros1Pal_interaction_msgsASRFileBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_interaction_msgsASRFile.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsASRFileGoal>
         */
        typedef Ros1Pal_interaction_msgsASRFileGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_interaction_msgsASRFile.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsASRFileResult>
         */
        typedef Ros1Pal_interaction_msgsASRFileResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_interaction_msgsASRFile.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsASRFileFeedback>
         */
        typedef Ros1Pal_interaction_msgsASRFileFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_interaction_msgsASRFile goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFile_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_interaction_msgsASRFile goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFile_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_interaction_msgsASRFile result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFile_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsASRFile server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFile_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_interaction_msgsASRFile.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_interaction_msgsASRFile.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFile_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_interaction_msgsASRFile.
     * @details Binds every operation to Ros1Pal_interaction_msgsASRFileBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_interaction_msgsASRFileBinding> Ros1Pal_interaction_msgsASRFileClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_interaction_msgsASRFile.
     * @details Binds every operation to Ros1Pal_interaction_msgsASRFileBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_interaction_msgsASRFileBinding> Ros1Pal_interaction_msgsASRFileServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_ASRSERVICE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsASRService.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_ASRService_call
     */
    struct Ros1Pal_interaction_msgsASRServiceBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_interaction_msgsASRService.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsASRServiceRequest>
         */
        typedef Ros1Pal_interaction_msgsASRServiceRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_interaction_msgsASRService.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsASRServiceResponse>
         */
        typedef Ros1Pal_interaction_msgsASRServiceResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_interaction_msgsASRService request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRService_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRService_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsASRService request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRService_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRService_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_interaction_msgsASRService ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_ASRService_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_ASRService_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_interaction_msgsASRService.
     * @details Binds every operation to Ros1Pal_interaction_msgsASRServiceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_interaction_msgsASRServiceBinding> Ros1Pal_interaction_msgsASRServiceClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_interaction_msgsASRService.
     * @details Binds every operation to Ros1Pal_interaction_msgsASRServiceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_interaction_msgsASRServiceBinding> Ros1Pal_interaction_msgsASRServiceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_AUDIOPLAY 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsAudioPlay.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_send
     */
    struct Ros1Pal_interaction_msgsAudioPlayBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_interaction_msgsAudioPlay.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioPlayGoal>
         */
        typedef Ros1Pal_interaction_msgsAudioPlayGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_interaction_msgsAudioPlay.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioPlayResult>
         */
        typedef Ros1Pal_interaction_msgsAudioPlayResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_interaction_msgsAudioPlay.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioPlayFeedback>
         */
        typedef Ros1Pal_interaction_msgsAudioPlayFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_interaction_msgsAudioPlay goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_interaction_msgsAudioPlay goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_interaction_msgsAudioPlay result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsAudioPlay server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_interaction_msgsAudioPlay.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_interaction_msgsAudioPlay.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlay_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_interaction_msgsAudioPlay.
     * @details Binds every operation to Ros1Pal_interaction_msgsAudioPlayBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_interaction_msgsAudioPlayBinding> Ros1Pal_interaction_msgsAudioPlayClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_interaction_msgsAudioPlay.
     * @details Binds every operation to Ros1Pal_interaction_msgsAudioPlayBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_interaction_msgsAudioPlayBinding> Ros1Pal_interaction_msgsAudioPlayServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_GETSPEECHDURATION 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsGetSpeechDuration.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_call
     */
    struct Ros1Pal_interaction_msgsGetSpeechDurationBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_interaction_msgsGetSpeechDuration.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationRequest>
         */
        typedef Ros1Pal_interaction_msgsGetSpeechDurationRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_interaction_msgsGetSpeechDuration.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationResponse>
         */
        typedef Ros1Pal_interaction_msgsGetSpeechDurationResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_interaction_msgsGetSpeechDuration request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsGetSpeechDuration request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_interaction_msgsGetSpeechDuration ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDuration_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_interaction_msgsGetSpeechDuration.
     * @details Binds every operation to Ros1Pal_interaction_msgsGetSpeechDurationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_interaction_msgsGetSpeechDurationBinding> Ros1Pal_interaction_msgsGetSpeechDurationClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_interaction_msgsGetSpeechDuration.
     * @details Binds every operation to Ros1Pal_interaction_msgsGetSpeechDurationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_interaction_msgsGetSpeechDurationBinding> Ros1Pal_interaction_msgsGetSpeechDurationServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUND 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsSound.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_Sound_send
     */
    struct Ros1Pal_interaction_msgsSoundBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_interaction_msgsSound.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundGoal>
         */
        typedef Ros1Pal_interaction_msgsSoundGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_interaction_msgsSound.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundResult>
         */
        typedef Ros1Pal_interaction_msgsSoundResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_interaction_msgsSound.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundFeedback>
         */
        typedef Ros1Pal_interaction_msgsSoundFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_interaction_msgsSound goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Sound_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_interaction_msgsSound goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Sound_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_interaction_msgsSound result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Sound_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsSound server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Sound_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_interaction_msgsSound.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_interaction_msgsSound.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Sound_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_SoundResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_SoundResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_interaction_msgsSound.
     * @details Binds every operation to Ros1Pal_interaction_msgsSoundBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_interaction_msgsSoundBinding> Ros1Pal_interaction_msgsSoundClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_interaction_msgsSound.
     * @details Binds every operation to Ros1Pal_interaction_msgsSoundBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_interaction_msgsSoundBinding> Ros1Pal_interaction_msgsSoundServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_SOUNDLOCALISATIONSERVICE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsSoundLocalisationService.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_call
     */
    struct Ros1Pal_interaction_msgsSoundLocalisationServiceBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_interaction_msgsSoundLocalisationService.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceRequest>
         */
        typedef Ros1Pal_interaction_msgsSoundLocalisationServiceRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_interaction_msgsSoundLocalisationService.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceResponse>
         */
        typedef Ros1Pal_interaction_msgsSoundLocalisationServiceResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_interaction_msgsSoundLocalisationService request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsSoundLocalisationService request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_interaction_msgsSoundLocalisationService ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationService_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_interaction_msgsSoundLocalisationService.
     * @details Binds every operation to Ros1Pal_interaction_msgsSoundLocalisationServiceBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_interaction_msgsSoundLocalisationServiceBinding>
        Ros1Pal_interaction_msgsSoundLocalisationServiceClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_interaction_msgsSoundLocalisationService.
     * @details Binds every operation to Ros1Pal_interaction_msgsSoundLocalisationServiceBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_interaction_msgsSoundLocalisationServiceBinding>
        Ros1Pal_interaction_msgsSoundLocalisationServiceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_TTS 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsTts.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_Tts_send
     */
    struct Ros1Pal_interaction_msgsTtsBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_interaction_msgsTts.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsGoal>
         */
        typedef Ros1Pal_interaction_msgsTtsGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_interaction_msgsTts.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsResult>
         */
        typedef Ros1Pal_interaction_msgsTtsResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_interaction_msgsTts.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsFeedback>
         */
        typedef Ros1Pal_interaction_msgsTtsFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_interaction_msgsTts goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Tts_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_interaction_msgsTts goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Tts_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_interaction_msgsTts result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Tts_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsTts server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Tts_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_interaction_msgsTts.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_interaction_msgsTts.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_Tts_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_TtsResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_TtsResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_interaction_msgsTts.
     * @details Binds every operation to Ros1Pal_interaction_msgsTtsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_interaction_msgsTtsBinding> Ros1Pal_interaction_msgsTtsClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_interaction_msgsTts.
     * @details Binds every operation to Ros1Pal_interaction_msgsTtsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_interaction_msgsTtsBinding> Ros1Pal_interaction_msgsTtsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_INTERACTION_MSGS_RECOGNIZERSERVICE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_interaction_msgsRecognizerService.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_interaction_msgs_recognizerService_call
     */
    struct Ros1Pal_interaction_msgsRecognizerServiceBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_interaction_msgsRecognizerService.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceRequest>
         */
        typedef Ros1Pal_interaction_msgsRecognizerServiceRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_interaction_msgsRecognizerService.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceResponse>
         */
        typedef Ros1Pal_interaction_msgsRecognizerServiceResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_interaction_msgsRecognizerService request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_interaction_msgs_recognizerService_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_recognizerService_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_interaction_msgsRecognizerService request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_interaction_msgs_recognizerService_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_recognizerService_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_interaction_msgsRecognizerService ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_interaction_msgs_recognizerService_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_interaction_msgs_recognizerService_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_interaction_msgsRecognizerService.
     * @details Binds every operation to Ros1Pal_interaction_msgsRecognizerServiceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_interaction_msgsRecognizerServiceBinding> Ros1Pal_interaction_msgsRecognizerServiceClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_interaction_msgsRecognizerService.
     * @details Binds every operation to Ros1Pal_interaction_msgsRecognizerServiceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_interaction_msgsRecognizerServiceBinding> Ros1Pal_interaction_msgsRecognizerServiceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_MOTION_MODEL_MSGS_GETMOTIONMAP 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_motion_model_msgsGetMotionMap.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_call
     */
    struct Ros1Pal_motion_model_msgsGetMotionMapBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_motion_model_msgsGetMotionMap.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapRequest>
         */
        typedef Ros1Pal_motion_model_msgsGetMotionMapRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_motion_model_msgsGetMotionMap.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapResponse>
         */
        typedef Ros1Pal_motion_model_msgsGetMotionMapResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_motion_model_msgsGetMotionMap request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_motion_model_msgsGetMotionMap request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_motion_model_msgsGetMotionMap ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMap_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_motion_model_msgsGetMotionMap.
     * @details Binds every operation to Ros1Pal_motion_model_msgsGetMotionMapBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_motion_model_msgsGetMotionMapBinding> Ros1Pal_motion_model_msgsGetMotionMapClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_motion_model_msgsGetMotionMap.
     * @details Binds every operation to Ros1Pal_motion_model_msgsGetMotionMapBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_motion_model_msgsGetMotionMapBinding> Ros1Pal_motion_model_msgsGetMotionMapServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STARTRECORDING 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_video_recording_msgsStartRecording.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_call
     */
    struct Ros1Pal_video_recording_msgsStartRecordingBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_video_recording_msgsStartRecording.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingRequest>
         */
        typedef Ros1Pal_video_recording_msgsStartRecordingRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_video_recording_msgsStartRecording.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingResponse>
         */
        typedef Ros1Pal_video_recording_msgsStartRecordingResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_video_recording_msgsStartRecording request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_video_recording_msgsStartRecording request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_video_recording_msgsStartRecording ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_video_recording_msgs_StartRecording_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_video_recording_msgsStartRecording.
     * @details Binds every operation to Ros1Pal_video_recording_msgsStartRecordingBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_video_recording_msgsStartRecordingBinding> Ros1Pal_video_recording_msgsStartRecordingClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_video_recording_msgsStartRecording.
     * @details Binds every operation to Ros1Pal_video_recording_msgsStartRecordingBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_video_recording_msgsStartRecordingBinding> Ros1Pal_video_recording_msgsStartRecordingServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VIDEO_RECORDING_MSGS_STOPRECORDING 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_video_recording_msgsStopRecording.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_call
     */
    struct Ros1Pal_video_recording_msgsStopRecordingBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_video_recording_msgsStopRecording.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingRequest>
         */
        typedef Ros1Pal_video_recording_msgsStopRecordingRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_video_recording_msgsStopRecording.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingResponse>
         */
        typedef Ros1Pal_video_recording_msgsStopRecordingResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_video_recording_msgsStopRecording request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_video_recording_msgsStopRecording request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_video_recording_msgsStopRecording ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_video_recording_msgs_StopRecording_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_video_recording_msgsStopRecording.
     * @details Binds every operation to Ros1Pal_video_recording_msgsStopRecordingBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_video_recording_msgsStopRecordingBinding> Ros1Pal_video_recording_msgsStopRecordingClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_video_recording_msgsStopRecording.
     * @details Binds every operation to Ros1Pal_video_recording_msgsStopRecordingBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_video_recording_msgsStopRecordingBinding> Ros1Pal_video_recording_msgsStopRecordingServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACERECOGNITION 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_vision_msgsFaceRecognition.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_send
     */
    struct Ros1Pal_vision_msgsFaceRecognitionBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_vision_msgsFaceRecognition.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionGoal>
         */
        typedef Ros1Pal_vision_msgsFaceRecognitionGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_vision_msgsFaceRecognition.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionResult>
         */
        typedef Ros1Pal_vision_msgsFaceRecognitionResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_vision_msgsFaceRecognition.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionFeedback>
         */
        typedef Ros1Pal_vision_msgsFaceRecognitionFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_vision_msgsFaceRecognition goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_vision_msgsFaceRecognition goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_vision_msgsFaceRecognition result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_vision_msgsFaceRecognition server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_vision_msgsFaceRecognition.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_vision_msgsFaceRecognition.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognition_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_vision_msgsFaceRecognition.
     * @details Binds every operation to Ros1Pal_vision_msgsFaceRecognitionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_vision_msgsFaceRecognitionBinding> Ros1Pal_vision_msgsFaceRecognitionClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_vision_msgsFaceRecognition.
     * @details Binds every operation to Ros1Pal_vision_msgsFaceRecognitionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_vision_msgsFaceRecognitionBinding> Ros1Pal_vision_msgsFaceRecognitionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTART 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_vision_msgsFaceTrackingStart.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_call
     */
    struct Ros1Pal_vision_msgsFaceTrackingStartBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_vision_msgsFaceTrackingStart.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartRequest>
         */
        typedef Ros1Pal_vision_msgsFaceTrackingStartRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_vision_msgsFaceTrackingStart.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartResponse>
         */
        typedef Ros1Pal_vision_msgsFaceTrackingStartResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_vision_msgsFaceTrackingStart request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_vision_msgsFaceTrackingStart request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_vision_msgsFaceTrackingStart ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStart_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_vision_msgsFaceTrackingStart.
     * @details Binds every operation to Ros1Pal_vision_msgsFaceTrackingStartBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_vision_msgsFaceTrackingStartBinding> Ros1Pal_vision_msgsFaceTrackingStartClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_vision_msgsFaceTrackingStart.
     * @details Binds every operation to Ros1Pal_vision_msgsFaceTrackingStartBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_vision_msgsFaceTrackingStartBinding> Ros1Pal_vision_msgsFaceTrackingStartServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FACETRACKINGSTOP 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_vision_msgsFaceTrackingStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_call
     */
    struct Ros1Pal_vision_msgsFaceTrackingStopBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_vision_msgsFaceTrackingStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopRequest>
         */
        typedef Ros1Pal_vision_msgsFaceTrackingStopRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_vision_msgsFaceTrackingStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopResponse>
         */
        typedef Ros1Pal_vision_msgsFaceTrackingStopResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_vision_msgsFaceTrackingStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_vision_msgsFaceTrackingStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_vision_msgsFaceTrackingStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStop_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_vision_msgsFaceTrackingStop.
     * @details Binds every operation to Ros1Pal_vision_msgsFaceTrackingStopBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_vision_msgsFaceTrackingStopBinding> Ros1Pal_vision_msgsFaceTrackingStopClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_vision_msgsFaceTrackingStop.
     * @details Binds every operation to Ros1Pal_vision_msgsFaceTrackingStopBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_vision_msgsFaceTrackingStopBinding> Ros1Pal_vision_msgsFaceTrackingStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTART 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_vision_msgsFollowMeStart.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_call
     */
    struct Ros1Pal_vision_msgsFollowMeStartBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_vision_msgsFollowMeStart.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStartRequest>
         */
        typedef Ros1Pal_vision_msgsFollowMeStartRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_vision_msgsFollowMeStart.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStartResponse>
         */
        typedef Ros1Pal_vision_msgsFollowMeStartResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_vision_msgsFollowMeStart request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_vision_msgsFollowMeStart request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_vision_msgsFollowMeStart ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStart_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_vision_msgsFollowMeStart.
     * @details Binds every operation to Ros1Pal_vision_msgsFollowMeStartBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_vision_msgsFollowMeStartBinding> Ros1Pal_vision_msgsFollowMeStartClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_vision_msgsFollowMeStart.
     * @details Binds every operation to Ros1Pal_vision_msgsFollowMeStartBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_vision_msgsFollowMeStartBinding> Ros1Pal_vision_msgsFollowMeStartServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_FOLLOWMESTOP 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_vision_msgsFollowMeStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_call
     */
    struct Ros1Pal_vision_msgsFollowMeStopBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_vision_msgsFollowMeStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStopRequest>
         */
        typedef Ros1Pal_vision_msgsFollowMeStopRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_vision_msgsFollowMeStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStopResponse>
         */
        typedef Ros1Pal_vision_msgsFollowMeStopResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_vision_msgsFollowMeStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_vision_msgsFollowMeStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_vision_msgsFollowMeStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_FollowMeStop_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_vision_msgsFollowMeStop.
     * @details Binds every operation to Ros1Pal_vision_msgsFollowMeStopBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_vision_msgsFollowMeStopBinding> Ros1Pal_vision_msgsFollowMeStopClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_vision_msgsFollowMeStop.
     * @details Binds every operation to Ros1Pal_vision_msgsFollowMeStopBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_vision_msgsFollowMeStopBinding> Ros1Pal_vision_msgsFollowMeStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISION_MSGS_LOOKTOPIXEL 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_vision_msgsLookToPixel.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_vision_msgs_LookToPixel_call
     */
    struct Ros1Pal_vision_msgsLookToPixelBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_vision_msgsLookToPixel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsLookToPixelRequest>
         */
        typedef Ros1Pal_vision_msgsLookToPixelRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_vision_msgsLookToPixel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_vision_msgsLookToPixelResponse>
         */
        typedef Ros1Pal_vision_msgsLookToPixelResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_vision_msgsLookToPixel request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_vision_msgs_LookToPixel_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_LookToPixel_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_vision_msgsLookToPixel request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_vision_msgs_LookToPixel_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_vision_msgs_LookToPixel_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_vision_msgsLookToPixel ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_vision_msgs_LookToPixel_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_vision_msgs_LookToPixel_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_vision_msgsLookToPixel.
     * @details Binds every operation to Ros1Pal_vision_msgsLookToPixelBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_vision_msgsLookToPixelBinding> Ros1Pal_vision_msgsLookToPixelClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_vision_msgsLookToPixel.
     * @details Binds every operation to Ros1Pal_vision_msgsLookToPixelBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_vision_msgsLookToPixelBinding> Ros1Pal_vision_msgsLookToPixelServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCADDPLACE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_send
     */
    struct Ros1Pal_visual_localization_msgsVisualLocAddPlaceBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal>
         */
        typedef Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult>
         */
        typedef Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback>
         */
        typedef Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_visual_localization_msgsVisualLocAddPlace goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_visual_localization_msgsVisualLocAddPlace
         * goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_visual_localization_msgsVisualLocAddPlace
         * result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_visual_localization_msgsVisualLocAddPlace server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlace_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
     * @details Binds every operation to Ros1Pal_visual_localization_msgsVisualLocAddPlaceBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_visual_localization_msgsVisualLocAddPlaceBinding>
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_visual_localization_msgsVisualLocAddPlace.
     * @details Binds every operation to Ros1Pal_visual_localization_msgsVisualLocAddPlaceBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_visual_localization_msgsVisualLocAddPlaceBinding>
        Ros1Pal_visual_localization_msgsVisualLocAddPlaceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_VISUAL_LOCALIZATION_MSGS_VISUALLOCRECOGNIZE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_visual_localization_msgsVisualLocRecognize.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_send
     */
    struct Ros1Pal_visual_localization_msgsVisualLocRecognizeBinding
    {
        /** @brief
         * @brief Complete goal record for Ros1Pal_visual_localization_msgsVisualLocRecognize.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal>
         */
        typedef Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal Goal;
        /** @brief
         * @brief Complete result record for Ros1Pal_visual_localization_msgsVisualLocRecognize.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeResult>
         */
        typedef Ros1Pal_visual_localization_msgsVisualLocRecognizeResult Result;
        /** @brief
         * @brief Complete feedback record for Ros1Pal_visual_localization_msgsVisualLocRecognize.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback>
         */
        typedef Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros1Pal_visual_localization_msgsVisualLocRecognize goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros1Pal_visual_localization_msgsVisualLocRecognize
         * goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros1Pal_visual_localization_msgsVisualLocRecognize
         * result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_visual_localization_msgsVisualLocRecognize server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros1Pal_visual_localization_msgsVisualLocRecognize.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros1Pal_visual_localization_msgsVisualLocRecognize.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognize_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros1Pal_visual_localization_msgsVisualLocRecognize.
     * @details Binds every operation to Ros1Pal_visual_localization_msgsVisualLocRecognizeBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Pal_visual_localization_msgsVisualLocRecognizeBinding>
        Ros1Pal_visual_localization_msgsVisualLocRecognizeClient;
    /** @brief
     * @brief Owning typed action server for Ros1Pal_visual_localization_msgsVisualLocRecognize.
     * @details Binds every operation to Ros1Pal_visual_localization_msgsVisualLocRecognizeBinding.
     * Owners stay stationary in one Guest instance and are not copyable. Explicit Host alias grants
     * remain necessary. Shared state is caller-serialized; callbacks execute only when the caller
     * polls, never on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Pal_visual_localization_msgsVisualLocRecognizeBinding>
        Ros1Pal_visual_localization_msgsVisualLocRecognizeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_MOVEHIPFEET 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_walking_msgsMoveHipFeet.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_call
     */
    struct Ros1Pal_walking_msgsMoveHipFeetBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_walking_msgsMoveHipFeet.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetRequest>
         */
        typedef Ros1Pal_walking_msgsMoveHipFeetRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_walking_msgsMoveHipFeet.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetResponse>
         */
        typedef Ros1Pal_walking_msgsMoveHipFeetResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_walking_msgsMoveHipFeet request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_walking_msgsMoveHipFeet request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_walking_msgsMoveHipFeet ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_MoveHipFeet_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_walking_msgsMoveHipFeet.
     * @details Binds every operation to Ros1Pal_walking_msgsMoveHipFeetBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_walking_msgsMoveHipFeetBinding> Ros1Pal_walking_msgsMoveHipFeetClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_walking_msgsMoveHipFeet.
     * @details Binds every operation to Ros1Pal_walking_msgsMoveHipFeetBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_walking_msgsMoveHipFeetBinding> Ros1Pal_walking_msgsMoveHipFeetServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_SIT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_walking_msgsSit.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_walking_msgs_Sit_call
     */
    struct Ros1Pal_walking_msgsSitBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_walking_msgsSit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsSitRequest>
         */
        typedef Ros1Pal_walking_msgsSitRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_walking_msgsSit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsSitResponse>
         */
        typedef Ros1Pal_walking_msgsSitResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_walking_msgsSit request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_walking_msgs_Sit_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_Sit_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_walking_msgsSit request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_walking_msgs_Sit_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_walking_msgs_Sit_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_walking_msgsSit ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_walking_msgs_Sit_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_Sit_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_walking_msgsSit.
     * @details Binds every operation to Ros1Pal_walking_msgsSitBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_walking_msgsSitBinding> Ros1Pal_walking_msgsSitClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_walking_msgsSit.
     * @details Binds every operation to Ros1Pal_walking_msgsSitBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_walking_msgsSitBinding> Ros1Pal_walking_msgsSitServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_STEPOVER 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_walking_msgsStepOver.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_walking_msgs_StepOver_call
     */
    struct Ros1Pal_walking_msgsStepOverBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_walking_msgsStepOver.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsStepOverRequest>
         */
        typedef Ros1Pal_walking_msgsStepOverRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_walking_msgsStepOver.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsStepOverResponse>
         */
        typedef Ros1Pal_walking_msgsStepOverResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_walking_msgsStepOver request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_walking_msgs_StepOver_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_StepOver_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_walking_msgsStepOver request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_walking_msgs_StepOver_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_walking_msgs_StepOver_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_walking_msgsStepOver ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_walking_msgs_StepOver_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_StepOver_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_walking_msgsStepOver.
     * @details Binds every operation to Ros1Pal_walking_msgsStepOverBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_walking_msgsStepOverBinding> Ros1Pal_walking_msgsStepOverClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_walking_msgsStepOver.
     * @details Binds every operation to Ros1Pal_walking_msgsStepOverBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_walking_msgsStepOverBinding> Ros1Pal_walking_msgsStepOverServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WALKING_MSGS_WALKSTEPS 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_walking_msgsWalkSteps.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_walking_msgs_WalkSteps_call
     */
    struct Ros1Pal_walking_msgsWalkStepsBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_walking_msgsWalkSteps.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsWalkStepsRequest>
         */
        typedef Ros1Pal_walking_msgsWalkStepsRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_walking_msgsWalkSteps.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_walking_msgsWalkStepsResponse>
         */
        typedef Ros1Pal_walking_msgsWalkStepsResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_walking_msgsWalkSteps request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_walking_msgs_WalkSteps_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_WalkSteps_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_walking_msgsWalkSteps request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_walking_msgs_WalkSteps_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_walking_msgs_WalkSteps_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_walking_msgsWalkSteps ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_walking_msgs_WalkSteps_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_walking_msgs_WalkSteps_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_walking_msgsWalkSteps.
     * @details Binds every operation to Ros1Pal_walking_msgsWalkStepsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_walking_msgsWalkStepsBinding> Ros1Pal_walking_msgsWalkStepsClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_walking_msgsWalkSteps.
     * @details Binds every operation to Ros1Pal_walking_msgsWalkStepsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_walking_msgsWalkStepsBinding> Ros1Pal_walking_msgsWalkStepsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_PAL_WIFI_LOCALIZATION_MSGS_GETWIFIMAP 1

    /** @brief
     * @brief Exact C operation binding for Ros1Pal_wifi_localization_msgsGetWifiMap.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_call
     */
    struct Ros1Pal_wifi_localization_msgsGetWifiMapBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Pal_wifi_localization_msgsGetWifiMap.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapRequest>
         */
        typedef Ros1Pal_wifi_localization_msgsGetWifiMapRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Pal_wifi_localization_msgsGetWifiMap.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapResponse>
         */
        typedef Ros1Pal_wifi_localization_msgsGetWifiMapResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Pal_wifi_localization_msgsGetWifiMap request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Pal_wifi_localization_msgsGetWifiMap request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Pal_wifi_localization_msgsGetWifiMap ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMap_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Pal_wifi_localization_msgsGetWifiMap.
     * @details Binds every operation to Ros1Pal_wifi_localization_msgsGetWifiMapBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Pal_wifi_localization_msgsGetWifiMapBinding> Ros1Pal_wifi_localization_msgsGetWifiMapClient;
    /** @brief
     * @brief Owning typed service server for Ros1Pal_wifi_localization_msgsGetWifiMap.
     * @details Binds every operation to Ros1Pal_wifi_localization_msgsGetWifiMapBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Pal_wifi_localization_msgsGetWifiMapBinding> Ros1Pal_wifi_localization_msgsGetWifiMapServer;
#endif
}  // namespace uwvm_custom
