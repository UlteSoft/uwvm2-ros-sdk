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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL 1

    /** @brief
     * @brief Exact C operation binding for Ros2Std_srvsSrvSetBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_std_srvs_srv_SetBool_call
     */
    struct Ros2Std_srvsSrvSetBoolBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Std_srvsSrvSetBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Std_srvsSrvSetBool_Request>
         */
        typedef Ros2Std_srvsSrvSetBool_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Std_srvsSrvSetBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Std_srvsSrvSetBool_Response>
         */
        typedef Ros2Std_srvsSrvSetBool_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Std_srvsSrvSetBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_std_srvs_srv_SetBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_std_srvs_srv_SetBool_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Std_srvsSrvSetBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_std_srvs_srv_SetBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_std_srvs_srv_SetBool_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Std_srvsSrvSetBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_std_srvs_srv_SetBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_std_srvs_srv_SetBool_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Std_srvsSrvSetBool.
     * @details Binds every operation to Ros2Std_srvsSrvSetBoolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Std_srvsSrvSetBoolBinding> Ros2Std_srvsSrvSetBoolClient;
    /** @brief
     * @brief Owning typed service server for Ros2Std_srvsSrvSetBool.
     * @details Binds every operation to Ros2Std_srvsSrvSetBoolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Std_srvsSrvSetBoolBinding> Ros2Std_srvsSrvSetBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER 1

    /** @brief
     * @brief Exact C operation binding for Ros2Std_srvsSrvTrigger.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_std_srvs_srv_Trigger_call
     */
    struct Ros2Std_srvsSrvTriggerBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Std_srvsSrvTrigger.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Std_srvsSrvTrigger_Request>
         */
        typedef Ros2Std_srvsSrvTrigger_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Std_srvsSrvTrigger.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Std_srvsSrvTrigger_Response>
         */
        typedef Ros2Std_srvsSrvTrigger_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Std_srvsSrvTrigger request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_std_srvs_srv_Trigger_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_std_srvs_srv_Trigger_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Std_srvsSrvTrigger request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_std_srvs_srv_Trigger_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_std_srvs_srv_Trigger_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Std_srvsSrvTrigger ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_std_srvs_srv_Trigger_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_std_srvs_srv_Trigger_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Std_srvsSrvTrigger.
     * @details Binds every operation to Ros2Std_srvsSrvTriggerBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Std_srvsSrvTriggerBinding> Ros2Std_srvsSrvTriggerClient;
    /** @brief
     * @brief Owning typed service server for Ros2Std_srvsSrvTrigger.
     * @details Binds every operation to Ros2Std_srvsSrvTriggerBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Std_srvsSrvTriggerBinding> Ros2Std_srvsSrvTriggerServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL 1

    /** @brief
     * @brief Exact C operation binding for Ros2Turtlebot3_msgsActionPatrol.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_send
     */
    struct Ros2Turtlebot3_msgsActionPatrolBinding
    {
        /** @brief
         * @brief Complete goal record for Ros2Turtlebot3_msgsActionPatrol.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsActionPatrol_Goal>
         */
        typedef Ros2Turtlebot3_msgsActionPatrol_Goal Goal;
        /** @brief
         * @brief Complete result record for Ros2Turtlebot3_msgsActionPatrol.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsActionPatrol_Result>
         */
        typedef Ros2Turtlebot3_msgsActionPatrol_Result Result;
        /** @brief
         * @brief Complete feedback record for Ros2Turtlebot3_msgsActionPatrol.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsActionPatrol_Feedback>
         */
        typedef Ros2Turtlebot3_msgsActionPatrol_Feedback Feedback;

        /** @brief
         * @brief Send and locally track one Ros2Turtlebot3_msgsActionPatrol goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_send(bundle, &value, &id);
        }

        /** @brief
         * @brief Read correlated feedback for one owned Ros2Turtlebot3_msgsActionPatrol goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_feedback(bundle, id, &value);
        }

        /** @brief
         * @brief Read and retire one validated terminal Ros2Turtlebot3_msgsActionPatrol result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_result(bundle, id, &kind, &value);
        }

        /** @brief
         * @brief Poll one incoming Ros2Turtlebot3_msgsActionPatrol server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_poll(cap, &id, &value);
        }

        /** @brief
         * @brief Send one typed feedback for Ros2Turtlebot3_msgsActionPatrol.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_respond_feedback(cap, id, &value);
        }

        /** @brief
         * @brief Send one typed result for Ros2Turtlebot3_msgsActionPatrol.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_respond_result(cap, id, kind, &value);
        }

        /** @brief
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_valid(&value) != 0;
        }

        /** @brief
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_valid(&value) != 0;
        }
    };

    /** @brief
     * @brief Owning typed action client for Ros2Turtlebot3_msgsActionPatrol.
     * @details Binds every operation to Ros2Turtlebot3_msgsActionPatrolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros2Turtlebot3_msgsActionPatrolBinding> Ros2Turtlebot3_msgsActionPatrolClient;
    /** @brief
     * @brief Owning typed action server for Ros2Turtlebot3_msgsActionPatrol.
     * @details Binds every operation to Ros2Turtlebot3_msgsActionPatrolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros2Turtlebot3_msgsActionPatrolBinding> Ros2Turtlebot3_msgsActionPatrolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN 1

    /** @brief
     * @brief Exact C operation binding for Ros2Turtlebot3_msgsSrvDqn.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_call
     */
    struct Ros2Turtlebot3_msgsSrvDqnBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Turtlebot3_msgsSrvDqn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsSrvDqn_Request>
         */
        typedef Ros2Turtlebot3_msgsSrvDqn_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Turtlebot3_msgsSrvDqn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsSrvDqn_Response>
         */
        typedef Ros2Turtlebot3_msgsSrvDqn_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Turtlebot3_msgsSrvDqn request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Turtlebot3_msgsSrvDqn request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Turtlebot3_msgsSrvDqn ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Turtlebot3_msgsSrvDqn.
     * @details Binds every operation to Ros2Turtlebot3_msgsSrvDqnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Turtlebot3_msgsSrvDqnBinding> Ros2Turtlebot3_msgsSrvDqnClient;
    /** @brief
     * @brief Owning typed service server for Ros2Turtlebot3_msgsSrvDqn.
     * @details Binds every operation to Ros2Turtlebot3_msgsSrvDqnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Turtlebot3_msgsSrvDqnBinding> Ros2Turtlebot3_msgsSrvDqnServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL 1

    /** @brief
     * @brief Exact C operation binding for Ros2Turtlebot3_msgsSrvGoal.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_call
     */
    struct Ros2Turtlebot3_msgsSrvGoalBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Turtlebot3_msgsSrvGoal.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsSrvGoal_Request>
         */
        typedef Ros2Turtlebot3_msgsSrvGoal_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Turtlebot3_msgsSrvGoal.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsSrvGoal_Response>
         */
        typedef Ros2Turtlebot3_msgsSrvGoal_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Turtlebot3_msgsSrvGoal request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Turtlebot3_msgsSrvGoal request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Turtlebot3_msgsSrvGoal ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Turtlebot3_msgsSrvGoal.
     * @details Binds every operation to Ros2Turtlebot3_msgsSrvGoalBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Turtlebot3_msgsSrvGoalBinding> Ros2Turtlebot3_msgsSrvGoalClient;
    /** @brief
     * @brief Owning typed service server for Ros2Turtlebot3_msgsSrvGoal.
     * @details Binds every operation to Ros2Turtlebot3_msgsSrvGoalBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Turtlebot3_msgsSrvGoalBinding> Ros2Turtlebot3_msgsSrvGoalServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND 1

    /** @brief
     * @brief Exact C operation binding for Ros2Turtlebot3_msgsSrvSound.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_call
     */
    struct Ros2Turtlebot3_msgsSrvSoundBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Turtlebot3_msgsSrvSound.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsSrvSound_Request>
         */
        typedef Ros2Turtlebot3_msgsSrvSound_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Turtlebot3_msgsSrvSound.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Turtlebot3_msgsSrvSound_Response>
         */
        typedef Ros2Turtlebot3_msgsSrvSound_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Turtlebot3_msgsSrvSound request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Turtlebot3_msgsSrvSound request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Turtlebot3_msgsSrvSound ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Turtlebot3_msgsSrvSound.
     * @details Binds every operation to Ros2Turtlebot3_msgsSrvSoundBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Turtlebot3_msgsSrvSoundBinding> Ros2Turtlebot3_msgsSrvSoundClient;
    /** @brief
     * @brief Owning typed service server for Ros2Turtlebot3_msgsSrvSound.
     * @details Binds every operation to Ros2Turtlebot3_msgsSrvSoundBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Turtlebot3_msgsSrvSoundBinding> Ros2Turtlebot3_msgsSrvSoundServer;
#endif
}  // namespace uwvm_custom
