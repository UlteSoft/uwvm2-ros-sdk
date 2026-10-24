/**
 * @file bounded_interfaces.hpp
 * @brief Bind complete original service/action components to checked C++ client and server owners.
 * @details This elephant source domain retains every original request, response, goal, feedback and result
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
#include <elephant/c/ros1/elephant-mycobot-kinetic-complete/bounded_interfaces.h>
#include <elephant/cpp/ros1/elephant-mycobot-kinetic-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_GetAngles_call
     */
    struct Ros1Mycobot_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest>
         */
        typedef Ros1Mycobot_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse>
         */
        typedef Ros1Mycobot_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationGetAngles.
     * @details Binds every operation to Ros1Mycobot_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationGetAnglesBinding> Ros1Mycobot_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationGetAngles.
     * @details Binds every operation to Ros1Mycobot_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationGetAnglesBinding> Ros1Mycobot_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoords_call
     */
    struct Ros1Mycobot_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest>
         */
        typedef Ros1Mycobot_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse>
         */
        typedef Ros1Mycobot_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationGetCoords.
     * @details Binds every operation to Ros1Mycobot_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationGetCoordsBinding> Ros1Mycobot_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationGetCoords.
     * @details Binds every operation to Ros1Mycobot_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationGetCoordsBinding> Ros1Mycobot_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatus_call
     */
    struct Ros1Mycobot_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest>
         */
        typedef Ros1Mycobot_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse>
         */
        typedef Ros1Mycobot_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationGripperStatus.
     * @details Binds every operation to Ros1Mycobot_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationGripperStatusBinding> Ros1Mycobot_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationGripperStatus.
     * @details Binds every operation to Ros1Mycobot_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationGripperStatusBinding> Ros1Mycobot_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatus_call
     */
    struct Ros1Mycobot_communicationPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest>
         */
        typedef Ros1Mycobot_communicationPumpStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse>
         */
        typedef Ros1Mycobot_communicationPumpStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationPumpStatus.
     * @details Binds every operation to Ros1Mycobot_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationPumpStatusBinding> Ros1Mycobot_communicationPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationPumpStatus.
     * @details Binds every operation to Ros1Mycobot_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationPumpStatusBinding> Ros1Mycobot_communicationPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_SetAngles_call
     */
    struct Ros1Mycobot_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest>
         */
        typedef Ros1Mycobot_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse>
         */
        typedef Ros1Mycobot_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationSetAngles.
     * @details Binds every operation to Ros1Mycobot_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationSetAnglesBinding> Ros1Mycobot_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationSetAngles.
     * @details Binds every operation to Ros1Mycobot_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationSetAnglesBinding> Ros1Mycobot_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoords_call
     */
    struct Ros1Mycobot_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest>
         */
        typedef Ros1Mycobot_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse>
         */
        typedef Ros1Mycobot_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationSetCoords.
     * @details Binds every operation to Ros1Mycobot_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationSetCoordsBinding> Ros1Mycobot_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationSetCoords.
     * @details Binds every operation to Ros1Mycobot_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationSetCoordsBinding> Ros1Mycobot_communicationSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mypalletizer_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAngles_call
     */
    struct Ros1Mypalletizer_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mypalletizer_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest>
         */
        typedef Ros1Mypalletizer_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mypalletizer_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse>
         */
        typedef Ros1Mypalletizer_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mypalletizer_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mypalletizer_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mypalletizer_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mypalletizer_communicationGetAngles.
     * @details Binds every operation to Ros1Mypalletizer_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mypalletizer_communicationGetAnglesBinding> Ros1Mypalletizer_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mypalletizer_communicationGetAngles.
     * @details Binds every operation to Ros1Mypalletizer_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mypalletizer_communicationGetAnglesBinding> Ros1Mypalletizer_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mypalletizer_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoords_call
     */
    struct Ros1Mypalletizer_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mypalletizer_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest>
         */
        typedef Ros1Mypalletizer_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mypalletizer_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse>
         */
        typedef Ros1Mypalletizer_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mypalletizer_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mypalletizer_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mypalletizer_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mypalletizer_communicationGetCoords.
     * @details Binds every operation to Ros1Mypalletizer_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mypalletizer_communicationGetCoordsBinding> Ros1Mypalletizer_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mypalletizer_communicationGetCoords.
     * @details Binds every operation to Ros1Mypalletizer_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mypalletizer_communicationGetCoordsBinding> Ros1Mypalletizer_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mypalletizer_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatus_call
     */
    struct Ros1Mypalletizer_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mypalletizer_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest>
         */
        typedef Ros1Mypalletizer_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mypalletizer_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse>
         */
        typedef Ros1Mypalletizer_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mypalletizer_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mypalletizer_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mypalletizer_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mypalletizer_communicationGripperStatus.
     * @details Binds every operation to Ros1Mypalletizer_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mypalletizer_communicationGripperStatusBinding> Ros1Mypalletizer_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mypalletizer_communicationGripperStatus.
     * @details Binds every operation to Ros1Mypalletizer_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mypalletizer_communicationGripperStatusBinding> Ros1Mypalletizer_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mypalletizer_communicationPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatus_call
     */
    struct Ros1Mypalletizer_communicationPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mypalletizer_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest>
         */
        typedef Ros1Mypalletizer_communicationPumpStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mypalletizer_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse>
         */
        typedef Ros1Mypalletizer_communicationPumpStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mypalletizer_communicationPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mypalletizer_communicationPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mypalletizer_communication_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mypalletizer_communicationPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mypalletizer_communicationPumpStatus.
     * @details Binds every operation to Ros1Mypalletizer_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mypalletizer_communicationPumpStatusBinding> Ros1Mypalletizer_communicationPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mypalletizer_communicationPumpStatus.
     * @details Binds every operation to Ros1Mypalletizer_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mypalletizer_communicationPumpStatusBinding> Ros1Mypalletizer_communicationPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mypalletizer_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAngles_call
     */
    struct Ros1Mypalletizer_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mypalletizer_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest>
         */
        typedef Ros1Mypalletizer_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mypalletizer_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse>
         */
        typedef Ros1Mypalletizer_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mypalletizer_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mypalletizer_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mypalletizer_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mypalletizer_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mypalletizer_communicationSetAngles.
     * @details Binds every operation to Ros1Mypalletizer_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mypalletizer_communicationSetAnglesBinding> Ros1Mypalletizer_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mypalletizer_communicationSetAngles.
     * @details Binds every operation to Ros1Mypalletizer_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mypalletizer_communicationSetAnglesBinding> Ros1Mypalletizer_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mypalletizer_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoords_call
     */
    struct Ros1Mypalletizer_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mypalletizer_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest>
         */
        typedef Ros1Mypalletizer_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mypalletizer_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse>
         */
        typedef Ros1Mypalletizer_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mypalletizer_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mypalletizer_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mypalletizer_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mypalletizer_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mypalletizer_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mypalletizer_communicationSetCoords.
     * @details Binds every operation to Ros1Mypalletizer_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mypalletizer_communicationSetCoordsBinding> Ros1Mypalletizer_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mypalletizer_communicationSetCoords.
     * @details Binds every operation to Ros1Mypalletizer_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mypalletizer_communicationSetCoordsBinding> Ros1Mypalletizer_communicationSetCoordsServer;
#endif
}  // namespace uwvm_custom
