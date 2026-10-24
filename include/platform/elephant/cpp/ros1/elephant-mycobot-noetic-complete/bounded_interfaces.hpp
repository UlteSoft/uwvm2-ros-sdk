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
#include <elephant/c/ros1/elephant-mycobot-noetic-complete/bounded_interfaces.h>
#include <elephant/cpp/ros1/elephant-mycobot-noetic-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mybuddy_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mybuddy_communication_GetAngles_call
     */
    struct Ros1Mybuddy_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mybuddy_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetAnglesRequest>
         */
        typedef Ros1Mybuddy_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mybuddy_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetAnglesResponse>
         */
        typedef Ros1Mybuddy_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mybuddy_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mybuddy_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mybuddy_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mybuddy_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mybuddy_communicationGetAngles.
     * @details Binds every operation to Ros1Mybuddy_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mybuddy_communicationGetAnglesBinding> Ros1Mybuddy_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mybuddy_communicationGetAngles.
     * @details Binds every operation to Ros1Mybuddy_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mybuddy_communicationGetAnglesBinding> Ros1Mybuddy_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mybuddy_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mybuddy_communication_GetCoords_call
     */
    struct Ros1Mybuddy_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mybuddy_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetCoordsRequest>
         */
        typedef Ros1Mybuddy_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mybuddy_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetCoordsResponse>
         */
        typedef Ros1Mybuddy_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mybuddy_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mybuddy_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mybuddy_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mybuddy_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mybuddy_communicationGetCoords.
     * @details Binds every operation to Ros1Mybuddy_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mybuddy_communicationGetCoordsBinding> Ros1Mybuddy_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mybuddy_communicationGetCoords.
     * @details Binds every operation to Ros1Mybuddy_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mybuddy_communicationGetCoordsBinding> Ros1Mybuddy_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mybuddy_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mybuddy_communication_GripperStatus_call
     */
    struct Ros1Mybuddy_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mybuddy_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGripperStatusRequest>
         */
        typedef Ros1Mybuddy_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mybuddy_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGripperStatusResponse>
         */
        typedef Ros1Mybuddy_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mybuddy_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mybuddy_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mybuddy_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mybuddy_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mybuddy_communicationGripperStatus.
     * @details Binds every operation to Ros1Mybuddy_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mybuddy_communicationGripperStatusBinding> Ros1Mybuddy_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mybuddy_communicationGripperStatus.
     * @details Binds every operation to Ros1Mybuddy_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mybuddy_communicationGripperStatusBinding> Ros1Mybuddy_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mybuddy_communicationPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mybuddy_communication_PumpStatus_call
     */
    struct Ros1Mybuddy_communicationPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mybuddy_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationPumpStatusRequest>
         */
        typedef Ros1Mybuddy_communicationPumpStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mybuddy_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationPumpStatusResponse>
         */
        typedef Ros1Mybuddy_communicationPumpStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mybuddy_communicationPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mybuddy_communicationPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mybuddy_communication_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mybuddy_communicationPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mybuddy_communicationPumpStatus.
     * @details Binds every operation to Ros1Mybuddy_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mybuddy_communicationPumpStatusBinding> Ros1Mybuddy_communicationPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mybuddy_communicationPumpStatus.
     * @details Binds every operation to Ros1Mybuddy_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mybuddy_communicationPumpStatusBinding> Ros1Mybuddy_communicationPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mybuddy_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mybuddy_communication_SetAngles_call
     */
    struct Ros1Mybuddy_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mybuddy_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetAnglesRequest>
         */
        typedef Ros1Mybuddy_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mybuddy_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetAnglesResponse>
         */
        typedef Ros1Mybuddy_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mybuddy_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mybuddy_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mybuddy_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mybuddy_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mybuddy_communicationSetAngles.
     * @details Binds every operation to Ros1Mybuddy_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mybuddy_communicationSetAnglesBinding> Ros1Mybuddy_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mybuddy_communicationSetAngles.
     * @details Binds every operation to Ros1Mybuddy_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mybuddy_communicationSetAnglesBinding> Ros1Mybuddy_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mybuddy_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mybuddy_communication_SetCoords_call
     */
    struct Ros1Mybuddy_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mybuddy_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetCoordsRequest>
         */
        typedef Ros1Mybuddy_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mybuddy_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetCoordsResponse>
         */
        typedef Ros1Mybuddy_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mybuddy_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mybuddy_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mybuddy_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mybuddy_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mybuddy_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mybuddy_communicationSetCoords.
     * @details Binds every operation to Ros1Mybuddy_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mybuddy_communicationSetCoordsBinding> Ros1Mybuddy_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mybuddy_communicationSetCoords.
     * @details Binds every operation to Ros1Mybuddy_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mybuddy_communicationSetCoordsBinding> Ros1Mybuddy_communicationSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mecharm_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mecharm_communication_GetAngles_call
     */
    struct Ros1Mecharm_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mecharm_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetAnglesRequest>
         */
        typedef Ros1Mecharm_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mecharm_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetAnglesResponse>
         */
        typedef Ros1Mecharm_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mecharm_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mecharm_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mecharm_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mecharm_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mecharm_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mecharm_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mecharm_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mecharm_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mecharm_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mecharm_communicationGetAngles.
     * @details Binds every operation to Ros1Mecharm_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mecharm_communicationGetAnglesBinding> Ros1Mecharm_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mecharm_communicationGetAngles.
     * @details Binds every operation to Ros1Mecharm_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mecharm_communicationGetAnglesBinding> Ros1Mecharm_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mecharm_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mecharm_communication_GetCoords_call
     */
    struct Ros1Mecharm_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mecharm_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetCoordsRequest>
         */
        typedef Ros1Mecharm_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mecharm_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetCoordsResponse>
         */
        typedef Ros1Mecharm_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mecharm_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mecharm_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mecharm_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mecharm_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mecharm_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mecharm_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mecharm_communicationGetCoords.
     * @details Binds every operation to Ros1Mecharm_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mecharm_communicationGetCoordsBinding> Ros1Mecharm_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mecharm_communicationGetCoords.
     * @details Binds every operation to Ros1Mecharm_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mecharm_communicationGetCoordsBinding> Ros1Mecharm_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mecharm_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mecharm_communication_GripperStatus_call
     */
    struct Ros1Mecharm_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mecharm_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGripperStatusRequest>
         */
        typedef Ros1Mecharm_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mecharm_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGripperStatusResponse>
         */
        typedef Ros1Mecharm_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mecharm_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mecharm_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mecharm_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mecharm_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mecharm_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mecharm_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mecharm_communicationGripperStatus.
     * @details Binds every operation to Ros1Mecharm_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mecharm_communicationGripperStatusBinding> Ros1Mecharm_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mecharm_communicationGripperStatus.
     * @details Binds every operation to Ros1Mecharm_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mecharm_communicationGripperStatusBinding> Ros1Mecharm_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mecharm_communicationPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mecharm_communication_PumpStatus_call
     */
    struct Ros1Mecharm_communicationPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mecharm_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationPumpStatusRequest>
         */
        typedef Ros1Mecharm_communicationPumpStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mecharm_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationPumpStatusResponse>
         */
        typedef Ros1Mecharm_communicationPumpStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mecharm_communicationPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mecharm_communication_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mecharm_communicationPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mecharm_communication_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mecharm_communicationPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mecharm_communication_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mecharm_communicationPumpStatus.
     * @details Binds every operation to Ros1Mecharm_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mecharm_communicationPumpStatusBinding> Ros1Mecharm_communicationPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mecharm_communicationPumpStatus.
     * @details Binds every operation to Ros1Mecharm_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mecharm_communicationPumpStatusBinding> Ros1Mecharm_communicationPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mecharm_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mecharm_communication_SetAngles_call
     */
    struct Ros1Mecharm_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mecharm_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetAnglesRequest>
         */
        typedef Ros1Mecharm_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mecharm_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetAnglesResponse>
         */
        typedef Ros1Mecharm_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mecharm_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mecharm_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mecharm_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mecharm_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mecharm_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mecharm_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mecharm_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mecharm_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mecharm_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mecharm_communicationSetAngles.
     * @details Binds every operation to Ros1Mecharm_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mecharm_communicationSetAnglesBinding> Ros1Mecharm_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mecharm_communicationSetAngles.
     * @details Binds every operation to Ros1Mecharm_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mecharm_communicationSetAnglesBinding> Ros1Mecharm_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mecharm_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mecharm_communication_SetCoords_call
     */
    struct Ros1Mecharm_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mecharm_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetCoordsRequest>
         */
        typedef Ros1Mecharm_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mecharm_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetCoordsResponse>
         */
        typedef Ros1Mecharm_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mecharm_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mecharm_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mecharm_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mecharm_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mecharm_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mecharm_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mecharm_communicationSetCoords.
     * @details Binds every operation to Ros1Mecharm_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mecharm_communicationSetCoordsBinding> Ros1Mecharm_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mecharm_communicationSetCoords.
     * @details Binds every operation to Ros1Mecharm_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mecharm_communicationSetCoordsBinding> Ros1Mecharm_communicationSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Myarm_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_myarm_communication_GetAngles_call
     */
    struct Ros1Myarm_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Myarm_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetAnglesRequest>
         */
        typedef Ros1Myarm_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Myarm_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetAnglesResponse>
         */
        typedef Ros1Myarm_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Myarm_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_myarm_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_myarm_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Myarm_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_myarm_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_myarm_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Myarm_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_myarm_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_myarm_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Myarm_communicationGetAngles.
     * @details Binds every operation to Ros1Myarm_communicationGetAnglesBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Myarm_communicationGetAnglesBinding> Ros1Myarm_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Myarm_communicationGetAngles.
     * @details Binds every operation to Ros1Myarm_communicationGetAnglesBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Myarm_communicationGetAnglesBinding> Ros1Myarm_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Myarm_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_myarm_communication_GetCoords_call
     */
    struct Ros1Myarm_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Myarm_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetCoordsRequest>
         */
        typedef Ros1Myarm_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Myarm_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetCoordsResponse>
         */
        typedef Ros1Myarm_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Myarm_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_myarm_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_myarm_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Myarm_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_myarm_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_myarm_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Myarm_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_myarm_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_myarm_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Myarm_communicationGetCoords.
     * @details Binds every operation to Ros1Myarm_communicationGetCoordsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Myarm_communicationGetCoordsBinding> Ros1Myarm_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Myarm_communicationGetCoords.
     * @details Binds every operation to Ros1Myarm_communicationGetCoordsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Myarm_communicationGetCoordsBinding> Ros1Myarm_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Myarm_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_myarm_communication_GripperStatus_call
     */
    struct Ros1Myarm_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Myarm_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGripperStatusRequest>
         */
        typedef Ros1Myarm_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Myarm_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGripperStatusResponse>
         */
        typedef Ros1Myarm_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Myarm_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_myarm_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Myarm_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_myarm_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Myarm_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_myarm_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Myarm_communicationGripperStatus.
     * @details Binds every operation to Ros1Myarm_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Myarm_communicationGripperStatusBinding> Ros1Myarm_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Myarm_communicationGripperStatus.
     * @details Binds every operation to Ros1Myarm_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Myarm_communicationGripperStatusBinding> Ros1Myarm_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Myarm_communicationPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_myarm_communication_PumpStatus_call
     */
    struct Ros1Myarm_communicationPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Myarm_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationPumpStatusRequest>
         */
        typedef Ros1Myarm_communicationPumpStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Myarm_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationPumpStatusResponse>
         */
        typedef Ros1Myarm_communicationPumpStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Myarm_communicationPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_myarm_communication_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Myarm_communicationPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_myarm_communication_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Myarm_communicationPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_myarm_communication_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Myarm_communicationPumpStatus.
     * @details Binds every operation to Ros1Myarm_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Myarm_communicationPumpStatusBinding> Ros1Myarm_communicationPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros1Myarm_communicationPumpStatus.
     * @details Binds every operation to Ros1Myarm_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Myarm_communicationPumpStatusBinding> Ros1Myarm_communicationPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Myarm_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_myarm_communication_SetAngles_call
     */
    struct Ros1Myarm_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Myarm_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetAnglesRequest>
         */
        typedef Ros1Myarm_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Myarm_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetAnglesResponse>
         */
        typedef Ros1Myarm_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Myarm_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_myarm_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_myarm_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Myarm_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_myarm_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_myarm_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Myarm_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_myarm_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_myarm_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Myarm_communicationSetAngles.
     * @details Binds every operation to Ros1Myarm_communicationSetAnglesBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Myarm_communicationSetAnglesBinding> Ros1Myarm_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Myarm_communicationSetAngles.
     * @details Binds every operation to Ros1Myarm_communicationSetAnglesBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Myarm_communicationSetAnglesBinding> Ros1Myarm_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Myarm_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_myarm_communication_SetCoords_call
     */
    struct Ros1Myarm_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Myarm_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetCoordsRequest>
         */
        typedef Ros1Myarm_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Myarm_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetCoordsResponse>
         */
        typedef Ros1Myarm_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Myarm_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_myarm_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_myarm_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Myarm_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_myarm_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_myarm_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Myarm_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_myarm_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_myarm_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Myarm_communicationSetCoords.
     * @details Binds every operation to Ros1Myarm_communicationSetCoordsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Myarm_communicationSetCoordsBinding> Ros1Myarm_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Myarm_communicationSetCoords.
     * @details Binds every operation to Ros1Myarm_communicationSetCoordsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Myarm_communicationSetCoordsBinding> Ros1Myarm_communicationSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_320_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetAngles_call
     */
    struct Ros1Mycobot_320_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_320_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesRequest>
         */
        typedef Ros1Mycobot_320_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_320_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesResponse>
         */
        typedef Ros1Mycobot_320_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_320_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_320_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_320_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_320_communicationGetAngles.
     * @details Binds every operation to Ros1Mycobot_320_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_320_communicationGetAnglesBinding> Ros1Mycobot_320_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_320_communicationGetAngles.
     * @details Binds every operation to Ros1Mycobot_320_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_320_communicationGetAnglesBinding> Ros1Mycobot_320_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_320_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetCoords_call
     */
    struct Ros1Mycobot_320_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_320_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsRequest>
         */
        typedef Ros1Mycobot_320_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_320_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsResponse>
         */
        typedef Ros1Mycobot_320_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_320_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_320_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_320_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_320_communicationGetCoords.
     * @details Binds every operation to Ros1Mycobot_320_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_320_communicationGetCoordsBinding> Ros1Mycobot_320_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_320_communicationGetCoords.
     * @details Binds every operation to Ros1Mycobot_320_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_320_communicationGetCoordsBinding> Ros1Mycobot_320_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_320_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatus_call
     */
    struct Ros1Mycobot_320_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_320_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusRequest>
         */
        typedef Ros1Mycobot_320_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_320_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusResponse>
         */
        typedef Ros1Mycobot_320_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_320_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_320_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_320_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_320_communicationGripperStatus.
     * @details Binds every operation to Ros1Mycobot_320_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_320_communicationGripperStatusBinding> Ros1Mycobot_320_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_320_communicationGripperStatus.
     * @details Binds every operation to Ros1Mycobot_320_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_320_communicationGripperStatusBinding> Ros1Mycobot_320_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_320_communicationPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatus_call
     */
    struct Ros1Mycobot_320_communicationPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_320_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusRequest>
         */
        typedef Ros1Mycobot_320_communicationPumpStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_320_communicationPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusResponse>
         */
        typedef Ros1Mycobot_320_communicationPumpStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_320_communicationPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_320_communicationPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_320_communication_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_320_communicationPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_320_communicationPumpStatus.
     * @details Binds every operation to Ros1Mycobot_320_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_320_communicationPumpStatusBinding> Ros1Mycobot_320_communicationPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_320_communicationPumpStatus.
     * @details Binds every operation to Ros1Mycobot_320_communicationPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_320_communicationPumpStatusBinding> Ros1Mycobot_320_communicationPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_320_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetAngles_call
     */
    struct Ros1Mycobot_320_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_320_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesRequest>
         */
        typedef Ros1Mycobot_320_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_320_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesResponse>
         */
        typedef Ros1Mycobot_320_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_320_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_320_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_320_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_320_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_320_communicationSetAngles.
     * @details Binds every operation to Ros1Mycobot_320_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_320_communicationSetAnglesBinding> Ros1Mycobot_320_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_320_communicationSetAngles.
     * @details Binds every operation to Ros1Mycobot_320_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_320_communicationSetAnglesBinding> Ros1Mycobot_320_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_320_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetCoords_call
     */
    struct Ros1Mycobot_320_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_320_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsRequest>
         */
        typedef Ros1Mycobot_320_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_320_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsResponse>
         */
        typedef Ros1Mycobot_320_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_320_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_320_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_320_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_320_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_320_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_320_communicationSetCoords.
     * @details Binds every operation to Ros1Mycobot_320_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_320_communicationSetCoordsBinding> Ros1Mycobot_320_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_320_communicationSetCoords.
     * @details Binds every operation to Ros1Mycobot_320_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_320_communicationSetCoordsBinding> Ros1Mycobot_320_communicationSetCoordsServer;
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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETENDTYPE 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationSetEndType.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_SetEndType_call
     */
    struct Ros1Mycobot_communicationSetEndTypeBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationSetEndType.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetEndTypeRequest>
         */
        typedef Ros1Mycobot_communicationSetEndTypeRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationSetEndType.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetEndTypeResponse>
         */
        typedef Ros1Mycobot_communicationSetEndTypeResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationSetEndType request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_SetEndType_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetEndType_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationSetEndType request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_SetEndType_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_SetEndType_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationSetEndType ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_SetEndType_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetEndType_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationSetEndType.
     * @details Binds every operation to Ros1Mycobot_communicationSetEndTypeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationSetEndTypeBinding> Ros1Mycobot_communicationSetEndTypeClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationSetEndType.
     * @details Binds every operation to Ros1Mycobot_communicationSetEndTypeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationSetEndTypeBinding> Ros1Mycobot_communicationSetEndTypeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETFRESHMODE 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationSetFreshMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_SetFreshMode_call
     */
    struct Ros1Mycobot_communicationSetFreshModeBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationSetFreshMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetFreshModeRequest>
         */
        typedef Ros1Mycobot_communicationSetFreshModeRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationSetFreshMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetFreshModeResponse>
         */
        typedef Ros1Mycobot_communicationSetFreshModeResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationSetFreshMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_SetFreshMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetFreshMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationSetFreshMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_SetFreshMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_SetFreshMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationSetFreshMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_SetFreshMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetFreshMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationSetFreshMode.
     * @details Binds every operation to Ros1Mycobot_communicationSetFreshModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationSetFreshModeBinding> Ros1Mycobot_communicationSetFreshModeClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationSetFreshMode.
     * @details Binds every operation to Ros1Mycobot_communicationSetFreshModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationSetFreshModeBinding> Ros1Mycobot_communicationSetFreshModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETTOOLREFERENCE 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationSetToolReference.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_SetToolReference_call
     */
    struct Ros1Mycobot_communicationSetToolReferenceBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationSetToolReference.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetToolReferenceRequest>
         */
        typedef Ros1Mycobot_communicationSetToolReferenceRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationSetToolReference.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetToolReferenceResponse>
         */
        typedef Ros1Mycobot_communicationSetToolReferenceResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationSetToolReference request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_SetToolReference_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetToolReference_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationSetToolReference request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_SetToolReference_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_SetToolReference_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationSetToolReference ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_SetToolReference_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetToolReference_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationSetToolReference.
     * @details Binds every operation to Ros1Mycobot_communicationSetToolReferenceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationSetToolReferenceBinding> Ros1Mycobot_communicationSetToolReferenceClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationSetToolReference.
     * @details Binds every operation to Ros1Mycobot_communicationSetToolReferenceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationSetToolReferenceBinding> Ros1Mycobot_communicationSetToolReferenceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETVISIONMODE 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_communicationSetVisionMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_communication_SetVisionMode_call
     */
    struct Ros1Mycobot_communicationSetVisionModeBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_communicationSetVisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetVisionModeRequest>
         */
        typedef Ros1Mycobot_communicationSetVisionModeRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_communicationSetVisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetVisionModeResponse>
         */
        typedef Ros1Mycobot_communicationSetVisionModeResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_communicationSetVisionMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_communication_SetVisionMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetVisionMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_communicationSetVisionMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_communication_SetVisionMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_communication_SetVisionMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_communicationSetVisionMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_communication_SetVisionMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_communication_SetVisionMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_communicationSetVisionMode.
     * @details Binds every operation to Ros1Mycobot_communicationSetVisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_communicationSetVisionModeBinding> Ros1Mycobot_communicationSetVisionModeClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_communicationSetVisionMode.
     * @details Binds every operation to Ros1Mycobot_communicationSetVisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_communicationSetVisionModeBinding> Ros1Mycobot_communicationSetVisionModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_pro450_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_call
     */
    struct Ros1Mycobot_pro450_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_pro450_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGetAnglesRequest>
         */
        typedef Ros1Mycobot_pro450_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_pro450_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGetAnglesResponse>
         */
        typedef Ros1Mycobot_pro450_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_pro450_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_pro450_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_pro450_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_pro450_communicationGetAngles.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_pro450_communicationGetAnglesBinding> Ros1Mycobot_pro450_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_pro450_communicationGetAngles.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_pro450_communicationGetAnglesBinding> Ros1Mycobot_pro450_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_pro450_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_call
     */
    struct Ros1Mycobot_pro450_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_pro450_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGetCoordsRequest>
         */
        typedef Ros1Mycobot_pro450_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_pro450_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGetCoordsResponse>
         */
        typedef Ros1Mycobot_pro450_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_pro450_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_pro450_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_pro450_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_pro450_communicationGetCoords.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_pro450_communicationGetCoordsBinding> Ros1Mycobot_pro450_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_pro450_communicationGetCoords.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_pro450_communicationGetCoordsBinding> Ros1Mycobot_pro450_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GETGRIPPERVALUE 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_pro450_communicationGetGripperValue.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_call
     */
    struct Ros1Mycobot_pro450_communicationGetGripperValueBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_pro450_communicationGetGripperValue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGetGripperValueRequest>
         */
        typedef Ros1Mycobot_pro450_communicationGetGripperValueRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_pro450_communicationGetGripperValue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGetGripperValueResponse>
         */
        typedef Ros1Mycobot_pro450_communicationGetGripperValueResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_pro450_communicationGetGripperValue request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_pro450_communicationGetGripperValue request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_pro450_communicationGetGripperValue ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValue_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_pro450_communicationGetGripperValue.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGetGripperValueBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_pro450_communicationGetGripperValueBinding>
        Ros1Mycobot_pro450_communicationGetGripperValueClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_pro450_communicationGetGripperValue.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGetGripperValueBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_pro450_communicationGetGripperValueBinding>
        Ros1Mycobot_pro450_communicationGetGripperValueServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_pro450_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_call
     */
    struct Ros1Mycobot_pro450_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_pro450_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGripperStatusRequest>
         */
        typedef Ros1Mycobot_pro450_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_pro450_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationGripperStatusResponse>
         */
        typedef Ros1Mycobot_pro450_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_pro450_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_pro450_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_pro450_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_pro450_communicationGripperStatus.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGripperStatusBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_pro450_communicationGripperStatusBinding>
        Ros1Mycobot_pro450_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_pro450_communicationGripperStatus.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationGripperStatusBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_pro450_communicationGripperStatusBinding>
        Ros1Mycobot_pro450_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_pro450_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_call
     */
    struct Ros1Mycobot_pro450_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_pro450_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationSetAnglesRequest>
         */
        typedef Ros1Mycobot_pro450_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_pro450_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationSetAnglesResponse>
         */
        typedef Ros1Mycobot_pro450_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_pro450_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_pro450_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_pro450_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_pro450_communicationSetAngles.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_pro450_communicationSetAnglesBinding> Ros1Mycobot_pro450_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_pro450_communicationSetAngles.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_pro450_communicationSetAnglesBinding> Ros1Mycobot_pro450_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_pro450_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_call
     */
    struct Ros1Mycobot_pro450_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_pro450_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationSetCoordsRequest>
         */
        typedef Ros1Mycobot_pro450_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_pro450_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationSetCoordsResponse>
         */
        typedef Ros1Mycobot_pro450_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_pro450_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_pro450_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_pro450_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_pro450_communicationSetCoords.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_pro450_communicationSetCoordsBinding> Ros1Mycobot_pro450_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_pro450_communicationSetCoords.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_pro450_communicationSetCoordsBinding> Ros1Mycobot_pro450_communicationSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_MYCOBOT_PRO450_COMMUNICATION_SETFRESHMODE 1

    /**
     * @brief Exact C operation binding for Ros1Mycobot_pro450_communicationSetFreshMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_call
     */
    struct Ros1Mycobot_pro450_communicationSetFreshModeBinding
    {
        /**
         * @brief Complete request record for Ros1Mycobot_pro450_communicationSetFreshMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationSetFreshModeRequest>
         */
        typedef Ros1Mycobot_pro450_communicationSetFreshModeRequest Request;
        /**
         * @brief Complete response record for Ros1Mycobot_pro450_communicationSetFreshMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_pro450_communicationSetFreshModeResponse>
         */
        typedef Ros1Mycobot_pro450_communicationSetFreshModeResponse Response;

        /**
         * @brief Issue one complete Ros1Mycobot_pro450_communicationSetFreshMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Mycobot_pro450_communicationSetFreshMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Mycobot_pro450_communicationSetFreshMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_mycobot_pro450_communication_SetFreshMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Mycobot_pro450_communicationSetFreshMode.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationSetFreshModeBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Mycobot_pro450_communicationSetFreshModeBinding> Ros1Mycobot_pro450_communicationSetFreshModeClient;
    /**
     * @brief Owning typed service server for Ros1Mycobot_pro450_communicationSetFreshMode.
     * @details Binds every operation to Ros1Mycobot_pro450_communicationSetFreshModeBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Mycobot_pro450_communicationSetFreshModeBinding> Ros1Mycobot_pro450_communicationSetFreshModeServer;
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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Ultraarm_communicationGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_ultraarm_communication_GetAngles_call
     */
    struct Ros1Ultraarm_communicationGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Ultraarm_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetAnglesRequest>
         */
        typedef Ros1Ultraarm_communicationGetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Ultraarm_communicationGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetAnglesResponse>
         */
        typedef Ros1Ultraarm_communicationGetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Ultraarm_communicationGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Ultraarm_communicationGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Ultraarm_communicationGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Ultraarm_communicationGetAngles.
     * @details Binds every operation to Ros1Ultraarm_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Ultraarm_communicationGetAnglesBinding> Ros1Ultraarm_communicationGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Ultraarm_communicationGetAngles.
     * @details Binds every operation to Ros1Ultraarm_communicationGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Ultraarm_communicationGetAnglesBinding> Ros1Ultraarm_communicationGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Ultraarm_communicationGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_ultraarm_communication_GetCoords_call
     */
    struct Ros1Ultraarm_communicationGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Ultraarm_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetCoordsRequest>
         */
        typedef Ros1Ultraarm_communicationGetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Ultraarm_communicationGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetCoordsResponse>
         */
        typedef Ros1Ultraarm_communicationGetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Ultraarm_communicationGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Ultraarm_communicationGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Ultraarm_communicationGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Ultraarm_communicationGetCoords.
     * @details Binds every operation to Ros1Ultraarm_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Ultraarm_communicationGetCoordsBinding> Ros1Ultraarm_communicationGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Ultraarm_communicationGetCoords.
     * @details Binds every operation to Ros1Ultraarm_communicationGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Ultraarm_communicationGetCoordsBinding> Ros1Ultraarm_communicationGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETGRIPPERVALUE 1

    /**
     * @brief Exact C operation binding for Ros1Ultraarm_communicationGetGripperValue.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_ultraarm_communication_GetGripperValue_call
     */
    struct Ros1Ultraarm_communicationGetGripperValueBinding
    {
        /**
         * @brief Complete request record for Ros1Ultraarm_communicationGetGripperValue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetGripperValueRequest>
         */
        typedef Ros1Ultraarm_communicationGetGripperValueRequest Request;
        /**
         * @brief Complete response record for Ros1Ultraarm_communicationGetGripperValue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetGripperValueResponse>
         */
        typedef Ros1Ultraarm_communicationGetGripperValueResponse Response;

        /**
         * @brief Issue one complete Ros1Ultraarm_communicationGetGripperValue request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_ultraarm_communication_GetGripperValue_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetGripperValue_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Ultraarm_communicationGetGripperValue request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_ultraarm_communication_GetGripperValue_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetGripperValue_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Ultraarm_communicationGetGripperValue ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_ultraarm_communication_GetGripperValue_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GetGripperValue_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Ultraarm_communicationGetGripperValue.
     * @details Binds every operation to Ros1Ultraarm_communicationGetGripperValueBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Ultraarm_communicationGetGripperValueBinding> Ros1Ultraarm_communicationGetGripperValueClient;
    /**
     * @brief Owning typed service server for Ros1Ultraarm_communicationGetGripperValue.
     * @details Binds every operation to Ros1Ultraarm_communicationGetGripperValueBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Ultraarm_communicationGetGripperValueBinding> Ros1Ultraarm_communicationGetGripperValueServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros1Ultraarm_communicationGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_ultraarm_communication_GripperStatus_call
     */
    struct Ros1Ultraarm_communicationGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros1Ultraarm_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGripperStatusRequest>
         */
        typedef Ros1Ultraarm_communicationGripperStatusRequest Request;
        /**
         * @brief Complete response record for Ros1Ultraarm_communicationGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGripperStatusResponse>
         */
        typedef Ros1Ultraarm_communicationGripperStatusResponse Response;

        /**
         * @brief Issue one complete Ros1Ultraarm_communicationGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Ultraarm_communicationGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_ultraarm_communication_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Ultraarm_communicationGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Ultraarm_communicationGripperStatus.
     * @details Binds every operation to Ros1Ultraarm_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Ultraarm_communicationGripperStatusBinding> Ros1Ultraarm_communicationGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros1Ultraarm_communicationGripperStatus.
     * @details Binds every operation to Ros1Ultraarm_communicationGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Ultraarm_communicationGripperStatusBinding> Ros1Ultraarm_communicationGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros1Ultraarm_communicationSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_ultraarm_communication_SetAngles_call
     */
    struct Ros1Ultraarm_communicationSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros1Ultraarm_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetAnglesRequest>
         */
        typedef Ros1Ultraarm_communicationSetAnglesRequest Request;
        /**
         * @brief Complete response record for Ros1Ultraarm_communicationSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetAnglesResponse>
         */
        typedef Ros1Ultraarm_communicationSetAnglesResponse Response;

        /**
         * @brief Issue one complete Ros1Ultraarm_communicationSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Ultraarm_communicationSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Ultraarm_communicationSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Ultraarm_communicationSetAngles.
     * @details Binds every operation to Ros1Ultraarm_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Ultraarm_communicationSetAnglesBinding> Ros1Ultraarm_communicationSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros1Ultraarm_communicationSetAngles.
     * @details Binds every operation to Ros1Ultraarm_communicationSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Ultraarm_communicationSetAnglesBinding> Ros1Ultraarm_communicationSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros1Ultraarm_communicationSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_ultraarm_communication_SetCoords_call
     */
    struct Ros1Ultraarm_communicationSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros1Ultraarm_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetCoordsRequest>
         */
        typedef Ros1Ultraarm_communicationSetCoordsRequest Request;
        /**
         * @brief Complete response record for Ros1Ultraarm_communicationSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetCoordsResponse>
         */
        typedef Ros1Ultraarm_communicationSetCoordsResponse Response;

        /**
         * @brief Issue one complete Ros1Ultraarm_communicationSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Ultraarm_communicationSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Ultraarm_communicationSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Ultraarm_communicationSetCoords.
     * @details Binds every operation to Ros1Ultraarm_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Ultraarm_communicationSetCoordsBinding> Ros1Ultraarm_communicationSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros1Ultraarm_communicationSetCoords.
     * @details Binds every operation to Ros1Ultraarm_communicationSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Ultraarm_communicationSetCoordsBinding> Ros1Ultraarm_communicationSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETFRESHMODE 1

    /**
     * @brief Exact C operation binding for Ros1Ultraarm_communicationSetFreshMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_ultraarm_communication_SetFreshMode_call
     */
    struct Ros1Ultraarm_communicationSetFreshModeBinding
    {
        /**
         * @brief Complete request record for Ros1Ultraarm_communicationSetFreshMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetFreshModeRequest>
         */
        typedef Ros1Ultraarm_communicationSetFreshModeRequest Request;
        /**
         * @brief Complete response record for Ros1Ultraarm_communicationSetFreshMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetFreshModeResponse>
         */
        typedef Ros1Ultraarm_communicationSetFreshModeResponse Response;

        /**
         * @brief Issue one complete Ros1Ultraarm_communicationSetFreshMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_ultraarm_communication_SetFreshMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetFreshMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Ultraarm_communicationSetFreshMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_ultraarm_communication_SetFreshMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetFreshMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Ultraarm_communicationSetFreshMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_ultraarm_communication_SetFreshMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_ultraarm_communication_SetFreshMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Ultraarm_communicationSetFreshMode.
     * @details Binds every operation to Ros1Ultraarm_communicationSetFreshModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Ultraarm_communicationSetFreshModeBinding> Ros1Ultraarm_communicationSetFreshModeClient;
    /**
     * @brief Owning typed service server for Ros1Ultraarm_communicationSetFreshMode.
     * @details Binds every operation to Ros1Ultraarm_communicationSetFreshModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Ultraarm_communicationSetFreshModeBinding> Ros1Ultraarm_communicationSetFreshModeServer;
#endif
}  // namespace uwvm_custom
