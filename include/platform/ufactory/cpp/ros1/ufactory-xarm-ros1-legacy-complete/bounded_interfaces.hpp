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
#include <ufactory/c/ros1/ufactory-xarm-ros1-legacy-complete/bounded_interfaces.h>
#include <ufactory/cpp/ros1/ufactory-xarm-ros1-legacy-complete/bounded_records.hpp>

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
