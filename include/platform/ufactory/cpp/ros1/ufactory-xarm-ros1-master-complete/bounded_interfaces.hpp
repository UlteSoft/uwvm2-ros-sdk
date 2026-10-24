/**
 * @file bounded_interfaces.hpp
 * @brief Bind complete original service/action components to checked C++ client and server owners.
 * @details This ufactory source domain retains every original request, response, goal, feedback and result
 * field. Canonical component codecs remain distinct from Runtime ticket/outcome envelopes. Each named role
 * needs an independently opened exact capability; caller-supplied aliases create no permission. Keep
 * context, callback state, goal storage and borrowed inputs live through synchronous calls and serialize
 * each owner. Decode the whole matching component before exposing output or calling a handler. Idle 11
 * retains pending ownership; an admitted service/goal is never replayed. Checked close/revoke reports
 * cleanup independently from application results and physical controller completion.
 * @par Ownership
 * Use explicit checked retirement before destruction to observe all cleanup errors. Stable heap/context
 * storage is part of the nonmoving owner contract. This module starts no executor, timer or native node.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/vendor.hpp>
#include <ufactory/c/ros1/ufactory-xarm-ros1-master-complete/bounded_interfaces.h>
#include <ufactory/cpp/ros1/ufactory-xarm-ros1-master-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVE 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_gripperMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_gripper_Move_send
     */
    struct Ros1Xarm_gripperMoveBinding
    {
        /**
         * @brief Complete goal record for Ros1Xarm_gripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_gripperMoveGoal>
         */
        typedef Ros1Xarm_gripperMoveGoal Goal;
        /**
         * @brief Complete result record for Ros1Xarm_gripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_gripperMoveResult>
         */
        typedef Ros1Xarm_gripperMoveResult Result;
        /**
         * @brief Complete feedback record for Ros1Xarm_gripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_gripperMoveFeedback>
         */
        typedef Ros1Xarm_gripperMoveFeedback Feedback;

        /**
         * @brief Send and locally track one Ros1Xarm_gripperMove goal.
         * @details Requires an initialized five-role Action bundle and exact action.send authority. Checks
         * local slot capacity and complete goal fields before importing. Commits one new unique nonzero ID
         * only after an exact eight-byte acknowledgement; ambiguous failure is not replayed.
         * @param[in,out] bundle Stable initialized owner/context/goal table in this instance.
         * @param[in] value Complete goal record borrowed for the call.
         * @param[in,out] id Disjoint destination, unchanged on failure; receives a tracked goal ID.
         * @return Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid framing/duplicates give
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_gripper_Move_send
         */
        static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_1_xarm_gripper_Move_send(bundle, &value, &id);
        }

        /**
         * @brief Read correlated feedback for one owned Ros1Xarm_gripperMove goal.
         * @details Uses the bundle feedback role and requires action feedback authority. The ID must still
         * belong to the local goal table. Idle/refused or mismatched/truncated bytes leave value unchanged.
         * Feedback does not retire the goal or imply terminal completion.
         * @param[in] bundle Live stable Action owner and exact feedback role.
         * @param[in] id Nonzero locally owned goal ID.
         * @param[in,out] value Disjoint complete feedback destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, UWVM_ROS_AGAIN for no available
         * feedback.
         * @see roswasmc_bounded_1_xarm_gripper_Move_feedback
         */
        static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_1_xarm_gripper_Move_feedback(bundle, id, &value);
        }

        /**
         * @brief Read and retire one validated terminal Ros1Xarm_gripperMove result.
         * @details Uses action result authority. Checks the returned ID, terminal marker 2..4 and complete
         * result before updating either output and removing exactly this ID from the local table.
         * Cancellation acknowledgement alone does not retire a goal.
         * @param[in,out] bundle Live stable bundle; successful result consumes one tracked ID.
         * @param[in] id Locally owned nonzero goal ID.
         * @param[in,out] kind Terminal marker 2..4, committed only on success.
         * @param[in,out] value Complete result; disjoint from kind and owner state.
         * @return Actual result; idle/failure preserves outputs and local ownership.
         * @see roswasmc_bounded_1_xarm_gripper_Move_result
         */
        static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_1_xarm_gripper_Move_result(bundle, id, &kind, &value);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_gripperMove server goal.
         * @details Requires an activated independent Action advertise role. Reads one exact nonzero ticket
         * plus complete Goal; commits destinations together. Does not call a handler, wait or create a
         * worker thread.
         * @param[in] cap Live granted Action advertise capability.
         * @param[in,out] id Receives a nonzero correlated server ticket, not a capability.
         * @param[in,out] value Disjoint complete Goal destination; unchanged on failure.
         * @return Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.
         * @see roswasmc_bounded_1_xarm_gripper_Move_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)
        {
            return roswasmc_bounded_1_xarm_gripper_Move_poll(cap, &id, &value);
        }

        /**
         * @brief Send one typed feedback for Ros1Xarm_gripperMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. Feedback does not signal terminal completion. A failed or malformed
         * acknowledgement may follow an external effect; no automatic retry or rollback occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] value Complete feedback record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_xarm_gripper_Move_respond_feedback
         */
        static roswasmc_result respond_feedback(roswasmc_capability const* cap, uint64_t id, Feedback const& value)
        {
            return roswasmc_bounded_1_xarm_gripper_Move_respond_feedback(cap, id, &value);
        }

        /**
         * @brief Send one typed result for Ros1Xarm_gripperMove.
         * @details Encodes the complete component before importing. Host policy checks ticket ownership,
         * type and deadline. A successful terminal response consumes the Host's one-shot terminal state. A
         * failed or malformed acknowledgement may follow an external effect; no automatic retry or rollback
         * occurs.
         * @param[in] cap Live independently granted action.respond capability.
         * @param[in] id Nonzero server ticket from the matching goal poll.
         * @param[in] kind Terminal wire marker, restricted to 2..4.
         * @param[in] value Complete result record borrowed only for this call.
         * @return Actual response result; zero requires a validated empty acknowledgement.
         * @see roswasmc_bounded_1_xarm_gripper_Move_respond_result
         */
        static roswasmc_result respond_result(roswasmc_capability const* cap, uint64_t id, uint8_t kind, Result const& value)
        {
            return roswasmc_bounded_1_xarm_gripper_Move_respond_result(cap, id, kind, &value);
        }

        /**
         * @brief Validate the complete result component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live result record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_xarm_gripper_MoveResult_valid
         */
        static bool valid_result(Result const& value)
        {
            return roswasmc_bounded_1_xarm_gripper_MoveResult_valid(&value) != 0;
        }

        /**
         * @brief Validate the complete feedback component locally.
         * @details Checks every generated field, bounded length and semantic constraint without
         * serialization, allocation or Host imports. Independent immutable records may be checked
         * concurrently.
         * @param[in] value Complete live feedback record.
         * @return True only when the generated C validator accepts all fields.
         * @see roswasmc_bounded_1_xarm_gripper_MoveFeedback_valid
         */
        static bool valid_feedback(Feedback const& value)
        {
            return roswasmc_bounded_1_xarm_gripper_MoveFeedback_valid(&value) != 0;
        }
    };

    /**
     * @brief Owning typed action client for Ros1Xarm_gripperMove.
     * @details Binds every operation to Ros1Xarm_gripperMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionClient
     */
    typedef ::roswasmcpp::vendor_detail::ActionClient<Ros1Xarm_gripperMoveBinding> Ros1Xarm_gripperMoveClient;
    /**
     * @brief Owning typed action server for Ros1Xarm_gripperMove.
     * @details Binds every operation to Ros1Xarm_gripperMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ActionServer
     */
    typedef ::roswasmcpp::vendor_detail::ActionServer<Ros1Xarm_gripperMoveBinding> Ros1Xarm_gripperMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CALL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CALL 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsCall.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_Call_call
     */
    struct Ros1Xarm_msgsCallBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsCall.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsCallRequest>
         */
        typedef Ros1Xarm_msgsCallRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsCall.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsCallResponse>
         */
        typedef Ros1Xarm_msgsCallResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsCall request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_Call_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_Call_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsCall request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_Call_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_Call_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsCall ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_Call_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_Call_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsCall.
     * @details Binds every operation to Ros1Xarm_msgsCallBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsCallBinding> Ros1Xarm_msgsCallClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsCall.
     * @details Binds every operation to Ros1Xarm_msgsCallBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsCallBinding> Ros1Xarm_msgsCallServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsClearErr.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErr_call
     */
    struct Ros1Xarm_msgsClearErrBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsClearErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrRequest>
         */
        typedef Ros1Xarm_msgsClearErrRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsClearErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrResponse>
         */
        typedef Ros1Xarm_msgsClearErrResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsClearErr request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErr_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_ClearErr_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsClearErr request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErr_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_ClearErr_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsClearErr ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErr_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_ClearErr_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsClearErr.
     * @details Binds every operation to Ros1Xarm_msgsClearErrBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsClearErrBinding> Ros1Xarm_msgsClearErrClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsClearErr.
     * @details Binds every operation to Ros1Xarm_msgsClearErrBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsClearErrBinding> Ros1Xarm_msgsClearErrServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUS 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsConfigToolModbus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_call
     */
    struct Ros1Xarm_msgsConfigToolModbusBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsConfigToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest>
         */
        typedef Ros1Xarm_msgsConfigToolModbusRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsConfigToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse>
         */
        typedef Ros1Xarm_msgsConfigToolModbusResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsConfigToolModbus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsConfigToolModbus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsConfigToolModbus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsConfigToolModbus.
     * @details Binds every operation to Ros1Xarm_msgsConfigToolModbusBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsConfigToolModbusBinding> Ros1Xarm_msgsConfigToolModbusClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsConfigToolModbus.
     * @details Binds every operation to Ros1Xarm_msgsConfigToolModbusBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsConfigToolModbusBinding> Ros1Xarm_msgsConfigToolModbusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_FTCALILOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_FTCALILOAD 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsFtCaliLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoad_call
     */
    struct Ros1Xarm_msgsFtCaliLoadBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsFtCaliLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtCaliLoadRequest>
         */
        typedef Ros1Xarm_msgsFtCaliLoadRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsFtCaliLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtCaliLoadResponse>
         */
        typedef Ros1Xarm_msgsFtCaliLoadResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsFtCaliLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_FtCaliLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsFtCaliLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_FtCaliLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsFtCaliLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_FtCaliLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsFtCaliLoad.
     * @details Binds every operation to Ros1Xarm_msgsFtCaliLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsFtCaliLoadBinding> Ros1Xarm_msgsFtCaliLoadClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsFtCaliLoad.
     * @details Binds every operation to Ros1Xarm_msgsFtCaliLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsFtCaliLoadBinding> Ros1Xarm_msgsFtCaliLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_FTIDENLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_FTIDENLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsFtIdenLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoad_call
     */
    struct Ros1Xarm_msgsFtIdenLoadBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsFtIdenLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtIdenLoadRequest>
         */
        typedef Ros1Xarm_msgsFtIdenLoadRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsFtIdenLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtIdenLoadResponse>
         */
        typedef Ros1Xarm_msgsFtIdenLoadResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsFtIdenLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_FtIdenLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsFtIdenLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_FtIdenLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsFtIdenLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_FtIdenLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsFtIdenLoad.
     * @details Binds every operation to Ros1Xarm_msgsFtIdenLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsFtIdenLoadBinding> Ros1Xarm_msgsFtIdenLoadClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsFtIdenLoad.
     * @details Binds every operation to Ros1Xarm_msgsFtIdenLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsFtIdenLoadBinding> Ros1Xarm_msgsFtIdenLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGetAnalogIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIO_call
     */
    struct Ros1Xarm_msgsGetAnalogIOBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest>
         */
        typedef Ros1Xarm_msgsGetAnalogIORequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse>
         */
        typedef Ros1Xarm_msgsGetAnalogIOResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGetAnalogIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGetAnalogIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGetAnalogIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetAnalogIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGetAnalogIO.
     * @details Binds every operation to Ros1Xarm_msgsGetAnalogIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetAnalogIOBinding> Ros1Xarm_msgsGetAnalogIOClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGetAnalogIO.
     * @details Binds every operation to Ros1Xarm_msgsGetAnalogIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetAnalogIOBinding> Ros1Xarm_msgsGetAnalogIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIO 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGetControllerDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_call
     */
    struct Ros1Xarm_msgsGetControllerDigitalIOBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGetControllerDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest>
         */
        typedef Ros1Xarm_msgsGetControllerDigitalIORequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGetControllerDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse>
         */
        typedef Ros1Xarm_msgsGetControllerDigitalIOResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGetControllerDigitalIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGetControllerDigitalIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGetControllerDigitalIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGetControllerDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsGetControllerDigitalIOBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetControllerDigitalIOBinding> Ros1Xarm_msgsGetControllerDigitalIOClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGetControllerDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsGetControllerDigitalIOBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetControllerDigitalIOBinding> Ros1Xarm_msgsGetControllerDigitalIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIO 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGetDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIO_call
     */
    struct Ros1Xarm_msgsGetDigitalIOBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest>
         */
        typedef Ros1Xarm_msgsGetDigitalIORequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse>
         */
        typedef Ros1Xarm_msgsGetDigitalIOResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGetDigitalIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGetDigitalIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGetDigitalIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetDigitalIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGetDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsGetDigitalIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetDigitalIOBinding> Ros1Xarm_msgsGetDigitalIOClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGetDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsGetDigitalIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetDigitalIOBinding> Ros1Xarm_msgsGetDigitalIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERR 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGetErr.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetErr_call
     */
    struct Ros1Xarm_msgsGetErrBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGetErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetErrRequest>
         */
        typedef Ros1Xarm_msgsGetErrRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGetErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetErrResponse>
         */
        typedef Ros1Xarm_msgsGetErrResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGetErr request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GetErr_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetErr_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGetErr request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GetErr_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GetErr_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGetErr ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GetErr_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetErr_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGetErr.
     * @details Binds every operation to Ros1Xarm_msgsGetErrBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetErrBinding> Ros1Xarm_msgsGetErrClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGetErr.
     * @details Binds every operation to Ros1Xarm_msgsGetErrBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetErrBinding> Ros1Xarm_msgsGetErrServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETFLOAT32LIST
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETFLOAT32LIST 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGetFloat32List.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetFloat32List_call
     */
    struct Ros1Xarm_msgsGetFloat32ListBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGetFloat32List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetFloat32ListRequest>
         */
        typedef Ros1Xarm_msgsGetFloat32ListRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGetFloat32List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetFloat32ListResponse>
         */
        typedef Ros1Xarm_msgsGetFloat32ListResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGetFloat32List request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32List_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetFloat32List_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGetFloat32List request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32List_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GetFloat32List_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGetFloat32List ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32List_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetFloat32List_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGetFloat32List.
     * @details Binds every operation to Ros1Xarm_msgsGetFloat32ListBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetFloat32ListBinding> Ros1Xarm_msgsGetFloat32ListClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGetFloat32List.
     * @details Binds every operation to Ros1Xarm_msgsGetFloat32ListBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetFloat32ListBinding> Ros1Xarm_msgsGetFloat32ListServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETINT32
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETINT32 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGetInt32.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetInt32_call
     */
    struct Ros1Xarm_msgsGetInt32Binding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGetInt32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetInt32Request>
         */
        typedef Ros1Xarm_msgsGetInt32Request Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGetInt32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetInt32Response>
         */
        typedef Ros1Xarm_msgsGetInt32Response Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGetInt32 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetInt32_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGetInt32 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GetInt32_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGetInt32 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetInt32_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGetInt32.
     * @details Binds every operation to Ros1Xarm_msgsGetInt32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetInt32Binding> Ros1Xarm_msgsGetInt32Client;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGetInt32.
     * @details Binds every operation to Ros1Xarm_msgsGetInt32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetInt32Binding> Ros1Xarm_msgsGetInt32Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETSETMODBUSDATA
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETSETMODBUSDATA 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGetSetModbusData.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusData_call
     */
    struct Ros1Xarm_msgsGetSetModbusDataBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGetSetModbusData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataRequest>
         */
        typedef Ros1Xarm_msgsGetSetModbusDataRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGetSetModbusData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataResponse>
         */
        typedef Ros1Xarm_msgsGetSetModbusDataResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGetSetModbusData request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusData_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetSetModbusData_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGetSetModbusData request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusData_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GetSetModbusData_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGetSetModbusData ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusData_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GetSetModbusData_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGetSetModbusData.
     * @details Binds every operation to Ros1Xarm_msgsGetSetModbusDataBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetSetModbusDataBinding> Ros1Xarm_msgsGetSetModbusDataClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGetSetModbusData.
     * @details Binds every operation to Ros1Xarm_msgsGetSetModbusDataBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetSetModbusDataBinding> Ros1Xarm_msgsGetSetModbusDataServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGripperConfig.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GripperConfig_call
     */
    struct Ros1Xarm_msgsGripperConfigBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGripperConfig.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigRequest>
         */
        typedef Ros1Xarm_msgsGripperConfigRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGripperConfig.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigResponse>
         */
        typedef Ros1Xarm_msgsGripperConfigResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGripperConfig request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfig_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperConfig_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGripperConfig request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfig_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperConfig_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGripperConfig ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfig_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperConfig_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGripperConfig.
     * @details Binds every operation to Ros1Xarm_msgsGripperConfigBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGripperConfigBinding> Ros1Xarm_msgsGripperConfigClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGripperConfig.
     * @details Binds every operation to Ros1Xarm_msgsGripperConfigBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGripperConfigBinding> Ros1Xarm_msgsGripperConfigServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVE 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGripperMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GripperMove_call
     */
    struct Ros1Xarm_msgsGripperMoveBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveRequest>
         */
        typedef Ros1Xarm_msgsGripperMoveRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveResponse>
         */
        typedef Ros1Xarm_msgsGripperMoveResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGripperMove request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMove_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperMove_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGripperMove request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMove_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperMove_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGripperMove ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMove_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperMove_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGripperMove.
     * @details Binds every operation to Ros1Xarm_msgsGripperMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGripperMoveBinding> Ros1Xarm_msgsGripperMoveClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGripperMove.
     * @details Binds every operation to Ros1Xarm_msgsGripperMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGripperMoveBinding> Ros1Xarm_msgsGripperMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATE 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsGripperState.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GripperState_call
     */
    struct Ros1Xarm_msgsGripperStateBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsGripperState.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperStateRequest>
         */
        typedef Ros1Xarm_msgsGripperStateRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsGripperState.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperStateResponse>
         */
        typedef Ros1Xarm_msgsGripperStateResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsGripperState request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_GripperState_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperState_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsGripperState request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_GripperState_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperState_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsGripperState ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_GripperState_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_GripperState_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsGripperState.
     * @details Binds every operation to Ros1Xarm_msgsGripperStateBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGripperStateBinding> Ros1Xarm_msgsGripperStateClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsGripperState.
     * @details Binds every operation to Ros1Xarm_msgsGripperStateBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGripperStateBinding> Ros1Xarm_msgsGripperStateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVE 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_Move_call
     */
    struct Ros1Xarm_msgsMoveBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveRequest>
         */
        typedef Ros1Xarm_msgsMoveRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveResponse>
         */
        typedef Ros1Xarm_msgsMoveResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsMove request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_Move_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_Move_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsMove request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_Move_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_Move_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsMove ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_Move_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_Move_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsMove.
     * @details Binds every operation to Ros1Xarm_msgsMoveBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsMoveBinding> Ros1Xarm_msgsMoveClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsMove.
     * @details Binds every operation to Ros1Xarm_msgsMoveBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsMoveBinding> Ros1Xarm_msgsMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEAXISANGLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEAXISANGLE 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsMoveAxisAngle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_call
     */
    struct Ros1Xarm_msgsMoveAxisAngleBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsMoveAxisAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleRequest>
         */
        typedef Ros1Xarm_msgsMoveAxisAngleRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsMoveAxisAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleResponse>
         */
        typedef Ros1Xarm_msgsMoveAxisAngleResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsMoveAxisAngle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsMoveAxisAngle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsMoveAxisAngle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveAxisAngle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsMoveAxisAngle.
     * @details Binds every operation to Ros1Xarm_msgsMoveAxisAngleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsMoveAxisAngleBinding> Ros1Xarm_msgsMoveAxisAngleClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsMoveAxisAngle.
     * @details Binds every operation to Ros1Xarm_msgsMoveAxisAngleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsMoveAxisAngleBinding> Ros1Xarm_msgsMoveAxisAngleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELO 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsMoveVelo.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVelo_call
     */
    struct Ros1Xarm_msgsMoveVeloBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsMoveVelo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVeloRequest>
         */
        typedef Ros1Xarm_msgsMoveVeloRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsMoveVelo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVeloResponse>
         */
        typedef Ros1Xarm_msgsMoveVeloResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsMoveVelo request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelo_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveVelo_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsMoveVelo request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelo_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveVelo_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsMoveVelo ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelo_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveVelo_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsMoveVelo.
     * @details Binds every operation to Ros1Xarm_msgsMoveVeloBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsMoveVeloBinding> Ros1Xarm_msgsMoveVeloClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsMoveVelo.
     * @details Binds every operation to Ros1Xarm_msgsMoveVeloBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsMoveVeloBinding> Ros1Xarm_msgsMoveVeloServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOCITY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOCITY 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsMoveVelocity.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVelocity_call
     */
    struct Ros1Xarm_msgsMoveVelocityBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsMoveVelocity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVelocityRequest>
         */
        typedef Ros1Xarm_msgsMoveVelocityRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsMoveVelocity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVelocityResponse>
         */
        typedef Ros1Xarm_msgsMoveVelocityResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsMoveVelocity request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocity_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveVelocity_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsMoveVelocity request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocity_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveVelocity_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsMoveVelocity ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocity_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_MoveVelocity_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsMoveVelocity.
     * @details Binds every operation to Ros1Xarm_msgsMoveVelocityBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsMoveVelocityBinding> Ros1Xarm_msgsMoveVelocityClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsMoveVelocity.
     * @details Binds every operation to Ros1Xarm_msgsMoveVelocityBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsMoveVelocityBinding> Ros1Xarm_msgsMoveVelocityServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_PLAYTRAJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_PLAYTRAJ 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsPlayTraj.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_PlayTraj_call
     */
    struct Ros1Xarm_msgsPlayTrajBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsPlayTraj.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsPlayTrajRequest>
         */
        typedef Ros1Xarm_msgsPlayTrajRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsPlayTraj.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsPlayTrajResponse>
         */
        typedef Ros1Xarm_msgsPlayTrajResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsPlayTraj request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTraj_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_PlayTraj_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsPlayTraj request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTraj_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_PlayTraj_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsPlayTraj ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTraj_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_PlayTraj_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsPlayTraj.
     * @details Binds every operation to Ros1Xarm_msgsPlayTrajBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsPlayTrajBinding> Ros1Xarm_msgsPlayTrajClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsPlayTraj.
     * @details Binds every operation to Ros1Xarm_msgsPlayTrajBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsPlayTrajBinding> Ros1Xarm_msgsPlayTrajServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXIS 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetAxis.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxis_call
     */
    struct Ros1Xarm_msgsSetAxisBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetAxis.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisRequest>
         */
        typedef Ros1Xarm_msgsSetAxisRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetAxis.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisResponse>
         */
        typedef Ros1Xarm_msgsSetAxisResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetAxis request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxis_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetAxis_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetAxis request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxis_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetAxis_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetAxis ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxis_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetAxis_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetAxis.
     * @details Binds every operation to Ros1Xarm_msgsSetAxisBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetAxisBinding> Ros1Xarm_msgsSetAxisClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetAxis.
     * @details Binds every operation to Ros1Xarm_msgsSetAxisBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetAxisBinding> Ros1Xarm_msgsSetAxisServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETCONTROLLERANALOGIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETCONTROLLERANALOGIO 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetControllerAnalogIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_call
     */
    struct Ros1Xarm_msgsSetControllerAnalogIOBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetControllerAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIORequest>
         */
        typedef Ros1Xarm_msgsSetControllerAnalogIORequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetControllerAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIOResponse>
         */
        typedef Ros1Xarm_msgsSetControllerAnalogIOResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetControllerAnalogIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetControllerAnalogIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetControllerAnalogIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetControllerAnalogIO.
     * @details Binds every operation to Ros1Xarm_msgsSetControllerAnalogIOBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetControllerAnalogIOBinding> Ros1Xarm_msgsSetControllerAnalogIOClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetControllerAnalogIO.
     * @details Binds every operation to Ros1Xarm_msgsSetControllerAnalogIOBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetControllerAnalogIOBinding> Ros1Xarm_msgsSetControllerAnalogIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIO 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIO_call
     */
    struct Ros1Xarm_msgsSetDigitalIOBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest>
         */
        typedef Ros1Xarm_msgsSetDigitalIORequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse>
         */
        typedef Ros1Xarm_msgsSetDigitalIOResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetDigitalIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetDigitalIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetDigitalIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetDigitalIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsSetDigitalIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetDigitalIOBinding> Ros1Xarm_msgsSetDigitalIOClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsSetDigitalIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetDigitalIOBinding> Ros1Xarm_msgsSetDigitalIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETFLOAT32
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETFLOAT32 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetFloat32.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetFloat32_call
     */
    struct Ros1Xarm_msgsSetFloat32Binding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetFloat32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetFloat32Request>
         */
        typedef Ros1Xarm_msgsSetFloat32Request Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetFloat32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetFloat32Response>
         */
        typedef Ros1Xarm_msgsSetFloat32Response Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetFloat32 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetFloat32_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetFloat32 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetFloat32_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetFloat32 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetFloat32_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetFloat32.
     * @details Binds every operation to Ros1Xarm_msgsSetFloat32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetFloat32Binding> Ros1Xarm_msgsSetFloat32Client;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetFloat32.
     * @details Binds every operation to Ros1Xarm_msgsSetFloat32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetFloat32Binding> Ros1Xarm_msgsSetFloat32Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetInt16.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16_call
     */
    struct Ros1Xarm_msgsSetInt16Binding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Request>
         */
        typedef Ros1Xarm_msgsSetInt16Request Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Response>
         */
        typedef Ros1Xarm_msgsSetInt16Response Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetInt16 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetInt16_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetInt16 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetInt16_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetInt16 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetInt16_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetInt16.
     * @details Binds every operation to Ros1Xarm_msgsSetInt16Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetInt16Binding> Ros1Xarm_msgsSetInt16Client;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetInt16.
     * @details Binds every operation to Ros1Xarm_msgsSetInt16Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetInt16Binding> Ros1Xarm_msgsSetInt16Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetLoad_call
     */
    struct Ros1Xarm_msgsSetLoadBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetLoadRequest>
         */
        typedef Ros1Xarm_msgsSetLoadRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetLoadResponse>
         */
        typedef Ros1Xarm_msgsSetLoadResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetLoad.
     * @details Binds every operation to Ros1Xarm_msgsSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetLoadBinding> Ros1Xarm_msgsSetLoadClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetLoad.
     * @details Binds every operation to Ros1Xarm_msgsSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetLoadBinding> Ros1Xarm_msgsSetLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMODBUSTIMEOUT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMODBUSTIMEOUT 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetModbusTimeout.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_call
     */
    struct Ros1Xarm_msgsSetModbusTimeoutBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetModbusTimeout.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutRequest>
         */
        typedef Ros1Xarm_msgsSetModbusTimeoutRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetModbusTimeout.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutResponse>
         */
        typedef Ros1Xarm_msgsSetModbusTimeoutResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetModbusTimeout request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetModbusTimeout request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetModbusTimeout ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetModbusTimeout_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetModbusTimeout.
     * @details Binds every operation to Ros1Xarm_msgsSetModbusTimeoutBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetModbusTimeoutBinding> Ros1Xarm_msgsSetModbusTimeoutClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetModbusTimeout.
     * @details Binds every operation to Ros1Xarm_msgsSetModbusTimeoutBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetModbusTimeoutBinding> Ros1Xarm_msgsSetModbusTimeoutServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMULTIPLEINTS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMULTIPLEINTS 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetMultipleInts.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetMultipleInts_call
     */
    struct Ros1Xarm_msgsSetMultipleIntsBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetMultipleInts.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsRequest>
         */
        typedef Ros1Xarm_msgsSetMultipleIntsRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetMultipleInts.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsResponse>
         */
        typedef Ros1Xarm_msgsSetMultipleIntsResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetMultipleInts request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleInts_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetMultipleInts_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetMultipleInts request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleInts_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetMultipleInts_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetMultipleInts ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleInts_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetMultipleInts_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetMultipleInts.
     * @details Binds every operation to Ros1Xarm_msgsSetMultipleIntsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetMultipleIntsBinding> Ros1Xarm_msgsSetMultipleIntsClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetMultipleInts.
     * @details Binds every operation to Ros1Xarm_msgsSetMultipleIntsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetMultipleIntsBinding> Ros1Xarm_msgsSetMultipleIntsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETSTRING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETSTRING 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetString.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetString_call
     */
    struct Ros1Xarm_msgsSetStringBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetString.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetStringRequest>
         */
        typedef Ros1Xarm_msgsSetStringRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetString.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetStringResponse>
         */
        typedef Ros1Xarm_msgsSetStringResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetString request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetString_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetString_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetString request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetString_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetString_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetString ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetString_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetString_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetString.
     * @details Binds every operation to Ros1Xarm_msgsSetStringBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetStringBinding> Ros1Xarm_msgsSetStringClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetString.
     * @details Binds every operation to Ros1Xarm_msgsSetStringBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetStringBinding> Ros1Xarm_msgsSetStringServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsSetToolModbus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetToolModbus_call
     */
    struct Ros1Xarm_msgsSetToolModbusBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsSetToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest>
         */
        typedef Ros1Xarm_msgsSetToolModbusRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsSetToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse>
         */
        typedef Ros1Xarm_msgsSetToolModbusResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsSetToolModbus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetToolModbus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsSetToolModbus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_SetToolModbus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsSetToolModbus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_SetToolModbus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsSetToolModbus.
     * @details Binds every operation to Ros1Xarm_msgsSetToolModbusBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetToolModbusBinding> Ros1Xarm_msgsSetToolModbusClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsSetToolModbus.
     * @details Binds every operation to Ros1Xarm_msgsSetToolModbusBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetToolModbusBinding> Ros1Xarm_msgsSetToolModbusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSET 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsTCPOffset.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffset_call
     */
    struct Ros1Xarm_msgsTCPOffsetBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsTCPOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest>
         */
        typedef Ros1Xarm_msgsTCPOffsetRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsTCPOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse>
         */
        typedef Ros1Xarm_msgsTCPOffsetResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsTCPOffset request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffset_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_TCPOffset_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsTCPOffset request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffset_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_TCPOffset_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsTCPOffset ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffset_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_TCPOffset_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsTCPOffset.
     * @details Binds every operation to Ros1Xarm_msgsTCPOffsetBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsTCPOffsetBinding> Ros1Xarm_msgsTCPOffsetClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsTCPOffset.
     * @details Binds every operation to Ros1Xarm_msgsTCPOffsetBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsTCPOffsetBinding> Ros1Xarm_msgsTCPOffsetServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_VACUUMGRIPPERCTRL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_VACUUMGRIPPERCTRL 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_msgsVacuumGripperCtrl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_call
     */
    struct Ros1Xarm_msgsVacuumGripperCtrlBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_msgsVacuumGripperCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlRequest>
         */
        typedef Ros1Xarm_msgsVacuumGripperCtrlRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_msgsVacuumGripperCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlResponse>
         */
        typedef Ros1Xarm_msgsVacuumGripperCtrlResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_msgsVacuumGripperCtrl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_msgsVacuumGripperCtrl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_msgsVacuumGripperCtrl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_msgsVacuumGripperCtrl.
     * @details Binds every operation to Ros1Xarm_msgsVacuumGripperCtrlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsVacuumGripperCtrlBinding> Ros1Xarm_msgsVacuumGripperCtrlClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_msgsVacuumGripperCtrl.
     * @details Binds every operation to Ros1Xarm_msgsVacuumGripperCtrlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsVacuumGripperCtrlBinding> Ros1Xarm_msgsVacuumGripperCtrlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLAN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLAN 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_plannerExec_plan.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_planner_exec_plan_call
     */
    struct Ros1Xarm_plannerExec_planBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_plannerExec_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerExec_planRequest>
         */
        typedef Ros1Xarm_plannerExec_planRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_plannerExec_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerExec_planResponse>
         */
        typedef Ros1Xarm_plannerExec_planResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_plannerExec_plan request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_planner_exec_plan_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_planner_exec_plan_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_plannerExec_plan request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_planner_exec_plan_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_planner_exec_plan_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_plannerExec_plan ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_planner_exec_plan_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_planner_exec_plan_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_plannerExec_plan.
     * @details Binds every operation to Ros1Xarm_plannerExec_planBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_plannerExec_planBinding> Ros1Xarm_plannerExec_planClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_plannerExec_plan.
     * @details Binds every operation to Ros1Xarm_plannerExec_planBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_plannerExec_planBinding> Ros1Xarm_plannerExec_planServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLAN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLAN 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_plannerJoint_plan.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_planner_joint_plan_call
     */
    struct Ros1Xarm_plannerJoint_planBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_plannerJoint_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerJoint_planRequest>
         */
        typedef Ros1Xarm_plannerJoint_planRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_plannerJoint_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerJoint_planResponse>
         */
        typedef Ros1Xarm_plannerJoint_planResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_plannerJoint_plan request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_planner_joint_plan_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_planner_joint_plan_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_plannerJoint_plan request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_planner_joint_plan_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_planner_joint_plan_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_plannerJoint_plan ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_planner_joint_plan_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_planner_joint_plan_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_plannerJoint_plan.
     * @details Binds every operation to Ros1Xarm_plannerJoint_planBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_plannerJoint_planBinding> Ros1Xarm_plannerJoint_planClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_plannerJoint_plan.
     * @details Binds every operation to Ros1Xarm_plannerJoint_planBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_plannerJoint_planBinding> Ros1Xarm_plannerJoint_planServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLAN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLAN 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_plannerPose_plan.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_planner_pose_plan_call
     */
    struct Ros1Xarm_plannerPose_planBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_plannerPose_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerPose_planRequest>
         */
        typedef Ros1Xarm_plannerPose_planRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_plannerPose_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerPose_planResponse>
         */
        typedef Ros1Xarm_plannerPose_planResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_plannerPose_plan request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_planner_pose_plan_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_planner_pose_plan_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_plannerPose_plan request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_planner_pose_plan_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_planner_pose_plan_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_plannerPose_plan ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_planner_pose_plan_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_planner_pose_plan_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_plannerPose_plan.
     * @details Binds every operation to Ros1Xarm_plannerPose_planBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_plannerPose_planBinding> Ros1Xarm_plannerPose_planClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_plannerPose_plan.
     * @details Binds every operation to Ros1Xarm_plannerPose_planBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_plannerPose_planBinding> Ros1Xarm_plannerPose_planServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLAN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLAN 1

    /**
     * @brief Exact C operation binding for Ros1Xarm_plannerSingle_straight_plan.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_plan_call
     */
    struct Ros1Xarm_plannerSingle_straight_planBinding
    {
        /**
         * @brief Complete request record for Ros1Xarm_plannerSingle_straight_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest>
         */
        typedef Ros1Xarm_plannerSingle_straight_planRequest Request;
        /**
         * @brief Complete response record for Ros1Xarm_plannerSingle_straight_plan.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse>
         */
        typedef Ros1Xarm_plannerSingle_straight_planResponse Response;

        /**
         * @brief Issue one complete Ros1Xarm_plannerSingle_straight_plan request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_plan_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_xarm_planner_single_straight_plan_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Xarm_plannerSingle_straight_plan request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_plan_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_xarm_planner_single_straight_plan_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Xarm_plannerSingle_straight_plan ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_plan_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_xarm_planner_single_straight_plan_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Xarm_plannerSingle_straight_plan.
     * @details Binds every operation to Ros1Xarm_plannerSingle_straight_planBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_plannerSingle_straight_planBinding> Ros1Xarm_plannerSingle_straight_planClient;
    /**
     * @brief Owning typed service server for Ros1Xarm_plannerSingle_straight_plan.
     * @details Binds every operation to Ros1Xarm_plannerSingle_straight_planBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_plannerSingle_straight_planBinding> Ros1Xarm_plannerSingle_straight_planServer;
#endif
}  // namespace uwvm_custom
