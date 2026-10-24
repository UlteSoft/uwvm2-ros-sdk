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
#include <elephant/c/ros2/elephant-mycobot-galactic-complete/bounded_interfaces.h>
#include <elephant/cpp/ros2/elephant-mycobot-galactic-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mecharm_interfacesSrvGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_call
     */
    struct Ros2Mecharm_interfacesSrvGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mecharm_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Request>
         */
        typedef Ros2Mecharm_interfacesSrvGetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mecharm_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Response>
         */
        typedef Ros2Mecharm_interfacesSrvGetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mecharm_interfacesSrvGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mecharm_interfacesSrvGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mecharm_interfacesSrvGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mecharm_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mecharm_interfacesSrvGetAnglesBinding> Ros2Mecharm_interfacesSrvGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mecharm_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mecharm_interfacesSrvGetAnglesBinding> Ros2Mecharm_interfacesSrvGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mecharm_interfacesSrvGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_call
     */
    struct Ros2Mecharm_interfacesSrvGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mecharm_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Request>
         */
        typedef Ros2Mecharm_interfacesSrvGetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mecharm_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Response>
         */
        typedef Ros2Mecharm_interfacesSrvGetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mecharm_interfacesSrvGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mecharm_interfacesSrvGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mecharm_interfacesSrvGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mecharm_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mecharm_interfacesSrvGetCoordsBinding> Ros2Mecharm_interfacesSrvGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mecharm_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mecharm_interfacesSrvGetCoordsBinding> Ros2Mecharm_interfacesSrvGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Mecharm_interfacesSrvGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_call
     */
    struct Ros2Mecharm_interfacesSrvGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Mecharm_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Request>
         */
        typedef Ros2Mecharm_interfacesSrvGripperStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Mecharm_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Response>
         */
        typedef Ros2Mecharm_interfacesSrvGripperStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Mecharm_interfacesSrvGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mecharm_interfacesSrvGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mecharm_interfacesSrvGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mecharm_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mecharm_interfacesSrvGripperStatusBinding> Ros2Mecharm_interfacesSrvGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros2Mecharm_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mecharm_interfacesSrvGripperStatusBinding> Ros2Mecharm_interfacesSrvGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Mecharm_interfacesSrvPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_call
     */
    struct Ros2Mecharm_interfacesSrvPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Mecharm_interfacesSrvPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Request>
         */
        typedef Ros2Mecharm_interfacesSrvPumpStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Mecharm_interfacesSrvPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Response>
         */
        typedef Ros2Mecharm_interfacesSrvPumpStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Mecharm_interfacesSrvPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mecharm_interfacesSrvPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mecharm_interfacesSrvPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mecharm_interfacesSrvPumpStatus.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mecharm_interfacesSrvPumpStatusBinding> Ros2Mecharm_interfacesSrvPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros2Mecharm_interfacesSrvPumpStatus.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mecharm_interfacesSrvPumpStatusBinding> Ros2Mecharm_interfacesSrvPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mecharm_interfacesSrvSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_call
     */
    struct Ros2Mecharm_interfacesSrvSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mecharm_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Request>
         */
        typedef Ros2Mecharm_interfacesSrvSetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mecharm_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Response>
         */
        typedef Ros2Mecharm_interfacesSrvSetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mecharm_interfacesSrvSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mecharm_interfacesSrvSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mecharm_interfacesSrvSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mecharm_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mecharm_interfacesSrvSetAnglesBinding> Ros2Mecharm_interfacesSrvSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mecharm_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mecharm_interfacesSrvSetAnglesBinding> Ros2Mecharm_interfacesSrvSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mecharm_interfacesSrvSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_call
     */
    struct Ros2Mecharm_interfacesSrvSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mecharm_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Request>
         */
        typedef Ros2Mecharm_interfacesSrvSetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mecharm_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Response>
         */
        typedef Ros2Mecharm_interfacesSrvSetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mecharm_interfacesSrvSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mecharm_interfacesSrvSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mecharm_interfacesSrvSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mecharm_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mecharm_interfacesSrvSetCoordsBinding> Ros2Mecharm_interfacesSrvSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mecharm_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mecharm_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mecharm_interfacesSrvSetCoordsBinding> Ros2Mecharm_interfacesSrvSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_interfacesSrvGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_call
     */
    struct Ros2Mycobot_interfacesSrvGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Request>
         */
        typedef Ros2Mycobot_interfacesSrvGetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Response>
         */
        typedef Ros2Mycobot_interfacesSrvGetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_interfacesSrvGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_interfacesSrvGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_interfacesSrvGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_interfacesSrvGetAnglesBinding> Ros2Mycobot_interfacesSrvGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_interfacesSrvGetAnglesBinding> Ros2Mycobot_interfacesSrvGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_interfacesSrvGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_call
     */
    struct Ros2Mycobot_interfacesSrvGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Request>
         */
        typedef Ros2Mycobot_interfacesSrvGetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Response>
         */
        typedef Ros2Mycobot_interfacesSrvGetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_interfacesSrvGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_interfacesSrvGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_interfacesSrvGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_interfacesSrvGetCoordsBinding> Ros2Mycobot_interfacesSrvGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_interfacesSrvGetCoordsBinding> Ros2Mycobot_interfacesSrvGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_interfacesSrvGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_call
     */
    struct Ros2Mycobot_interfacesSrvGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Request>
         */
        typedef Ros2Mycobot_interfacesSrvGripperStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Response>
         */
        typedef Ros2Mycobot_interfacesSrvGripperStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_interfacesSrvGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_interfacesSrvGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_interfacesSrvGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_interfacesSrvGripperStatusBinding> Ros2Mycobot_interfacesSrvGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_interfacesSrvGripperStatusBinding> Ros2Mycobot_interfacesSrvGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_interfacesSrvPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_call
     */
    struct Ros2Mycobot_interfacesSrvPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_interfacesSrvPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Request>
         */
        typedef Ros2Mycobot_interfacesSrvPumpStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_interfacesSrvPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Response>
         */
        typedef Ros2Mycobot_interfacesSrvPumpStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_interfacesSrvPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_interfacesSrvPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_interfacesSrvPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_interfacesSrvPumpStatus.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_interfacesSrvPumpStatusBinding> Ros2Mycobot_interfacesSrvPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_interfacesSrvPumpStatus.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_interfacesSrvPumpStatusBinding> Ros2Mycobot_interfacesSrvPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_interfacesSrvSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_call
     */
    struct Ros2Mycobot_interfacesSrvSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Request>
         */
        typedef Ros2Mycobot_interfacesSrvSetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Response>
         */
        typedef Ros2Mycobot_interfacesSrvSetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_interfacesSrvSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_interfacesSrvSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_interfacesSrvSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_interfacesSrvSetAnglesBinding> Ros2Mycobot_interfacesSrvSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_interfacesSrvSetAnglesBinding> Ros2Mycobot_interfacesSrvSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_interfacesSrvSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_call
     */
    struct Ros2Mycobot_interfacesSrvSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Request>
         */
        typedef Ros2Mycobot_interfacesSrvSetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Response>
         */
        typedef Ros2Mycobot_interfacesSrvSetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_interfacesSrvSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_interfacesSrvSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_interfacesSrvSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_interfacesSrvSetCoordsBinding> Ros2Mycobot_interfacesSrvSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mycobot_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_interfacesSrvSetCoordsBinding> Ros2Mycobot_interfacesSrvSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_pro450_interfacesSrvGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_call
     */
    struct Ros2Mycobot_pro450_interfacesSrvGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_pro450_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Request>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_pro450_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Response>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_pro450_interfacesSrvGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_pro450_interfacesSrvGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_pro450_interfacesSrvGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_pro450_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_pro450_interfacesSrvGetAnglesBinding> Ros2Mycobot_pro450_interfacesSrvGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_pro450_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_pro450_interfacesSrvGetAnglesBinding> Ros2Mycobot_pro450_interfacesSrvGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_pro450_interfacesSrvGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_call
     */
    struct Ros2Mycobot_pro450_interfacesSrvGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_pro450_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Request>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_pro450_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Response>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_pro450_interfacesSrvGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_pro450_interfacesSrvGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_pro450_interfacesSrvGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_pro450_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_pro450_interfacesSrvGetCoordsBinding> Ros2Mycobot_pro450_interfacesSrvGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_pro450_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_pro450_interfacesSrvGetCoordsBinding> Ros2Mycobot_pro450_interfacesSrvGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_pro450_interfacesSrvGetGripperValue.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_call
     */
    struct Ros2Mycobot_pro450_interfacesSrvGetGripperValueBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_pro450_interfacesSrvGetGripperValue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_pro450_interfacesSrvGetGripperValue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_pro450_interfacesSrvGetGripperValue request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_pro450_interfacesSrvGetGripperValue request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_pro450_interfacesSrvGetGripperValue ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_pro450_interfacesSrvGetGripperValue.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGetGripperValueBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_pro450_interfacesSrvGetGripperValueBinding>
        Ros2Mycobot_pro450_interfacesSrvGetGripperValueClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_pro450_interfacesSrvGetGripperValue.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGetGripperValueBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_pro450_interfacesSrvGetGripperValueBinding>
        Ros2Mycobot_pro450_interfacesSrvGetGripperValueServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_pro450_interfacesSrvGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_call
     */
    struct Ros2Mycobot_pro450_interfacesSrvGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_pro450_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_pro450_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_pro450_interfacesSrvGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_pro450_interfacesSrvGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_pro450_interfacesSrvGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_pro450_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGripperStatusBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_pro450_interfacesSrvGripperStatusBinding>
        Ros2Mycobot_pro450_interfacesSrvGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_pro450_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvGripperStatusBinding. Owners
     * stay stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_pro450_interfacesSrvGripperStatusBinding>
        Ros2Mycobot_pro450_interfacesSrvGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_pro450_interfacesSrvSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_call
     */
    struct Ros2Mycobot_pro450_interfacesSrvSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_pro450_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Request>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvSetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_pro450_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Response>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvSetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_pro450_interfacesSrvSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_pro450_interfacesSrvSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_pro450_interfacesSrvSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_pro450_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_pro450_interfacesSrvSetAnglesBinding> Ros2Mycobot_pro450_interfacesSrvSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_pro450_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_pro450_interfacesSrvSetAnglesBinding> Ros2Mycobot_pro450_interfacesSrvSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mycobot_pro450_interfacesSrvSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_call
     */
    struct Ros2Mycobot_pro450_interfacesSrvSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mycobot_pro450_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Request>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvSetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mycobot_pro450_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Response>
         */
        typedef Ros2Mycobot_pro450_interfacesSrvSetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mycobot_pro450_interfacesSrvSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mycobot_pro450_interfacesSrvSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mycobot_pro450_interfacesSrvSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mycobot_pro450_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mycobot_pro450_interfacesSrvSetCoordsBinding> Ros2Mycobot_pro450_interfacesSrvSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mycobot_pro450_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mycobot_pro450_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mycobot_pro450_interfacesSrvSetCoordsBinding> Ros2Mycobot_pro450_interfacesSrvSetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mypalletizer_interfacesSrvGetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_call
     */
    struct Ros2Mypalletizer_interfacesSrvGetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mypalletizer_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Request>
         */
        typedef Ros2Mypalletizer_interfacesSrvGetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mypalletizer_interfacesSrvGetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Response>
         */
        typedef Ros2Mypalletizer_interfacesSrvGetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mypalletizer_interfacesSrvGetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mypalletizer_interfacesSrvGetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mypalletizer_interfacesSrvGetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mypalletizer_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mypalletizer_interfacesSrvGetAnglesBinding> Ros2Mypalletizer_interfacesSrvGetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mypalletizer_interfacesSrvGetAngles.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvGetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mypalletizer_interfacesSrvGetAnglesBinding> Ros2Mypalletizer_interfacesSrvGetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mypalletizer_interfacesSrvGetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_call
     */
    struct Ros2Mypalletizer_interfacesSrvGetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mypalletizer_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Request>
         */
        typedef Ros2Mypalletizer_interfacesSrvGetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mypalletizer_interfacesSrvGetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Response>
         */
        typedef Ros2Mypalletizer_interfacesSrvGetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mypalletizer_interfacesSrvGetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mypalletizer_interfacesSrvGetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mypalletizer_interfacesSrvGetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mypalletizer_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mypalletizer_interfacesSrvGetCoordsBinding> Ros2Mypalletizer_interfacesSrvGetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mypalletizer_interfacesSrvGetCoords.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvGetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mypalletizer_interfacesSrvGetCoordsBinding> Ros2Mypalletizer_interfacesSrvGetCoordsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Mypalletizer_interfacesSrvGripperStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_call
     */
    struct Ros2Mypalletizer_interfacesSrvGripperStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Mypalletizer_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Request>
         */
        typedef Ros2Mypalletizer_interfacesSrvGripperStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Mypalletizer_interfacesSrvGripperStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Response>
         */
        typedef Ros2Mypalletizer_interfacesSrvGripperStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Mypalletizer_interfacesSrvGripperStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mypalletizer_interfacesSrvGripperStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mypalletizer_interfacesSrvGripperStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mypalletizer_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mypalletizer_interfacesSrvGripperStatusBinding> Ros2Mypalletizer_interfacesSrvGripperStatusClient;
    /**
     * @brief Owning typed service server for Ros2Mypalletizer_interfacesSrvGripperStatus.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvGripperStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mypalletizer_interfacesSrvGripperStatusBinding> Ros2Mypalletizer_interfacesSrvGripperStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Mypalletizer_interfacesSrvPumpStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_call
     */
    struct Ros2Mypalletizer_interfacesSrvPumpStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Mypalletizer_interfacesSrvPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Request>
         */
        typedef Ros2Mypalletizer_interfacesSrvPumpStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Mypalletizer_interfacesSrvPumpStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Response>
         */
        typedef Ros2Mypalletizer_interfacesSrvPumpStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Mypalletizer_interfacesSrvPumpStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mypalletizer_interfacesSrvPumpStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mypalletizer_interfacesSrvPumpStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mypalletizer_interfacesSrvPumpStatus.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mypalletizer_interfacesSrvPumpStatusBinding> Ros2Mypalletizer_interfacesSrvPumpStatusClient;
    /**
     * @brief Owning typed service server for Ros2Mypalletizer_interfacesSrvPumpStatus.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvPumpStatusBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mypalletizer_interfacesSrvPumpStatusBinding> Ros2Mypalletizer_interfacesSrvPumpStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES 1

    /**
     * @brief Exact C operation binding for Ros2Mypalletizer_interfacesSrvSetAngles.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_call
     */
    struct Ros2Mypalletizer_interfacesSrvSetAnglesBinding
    {
        /**
         * @brief Complete request record for Ros2Mypalletizer_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Request>
         */
        typedef Ros2Mypalletizer_interfacesSrvSetAngles_Request Request;
        /**
         * @brief Complete response record for Ros2Mypalletizer_interfacesSrvSetAngles.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Response>
         */
        typedef Ros2Mypalletizer_interfacesSrvSetAngles_Response Response;

        /**
         * @brief Issue one complete Ros2Mypalletizer_interfacesSrvSetAngles request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mypalletizer_interfacesSrvSetAngles request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mypalletizer_interfacesSrvSetAngles ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mypalletizer_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mypalletizer_interfacesSrvSetAnglesBinding> Ros2Mypalletizer_interfacesSrvSetAnglesClient;
    /**
     * @brief Owning typed service server for Ros2Mypalletizer_interfacesSrvSetAngles.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvSetAnglesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mypalletizer_interfacesSrvSetAnglesBinding> Ros2Mypalletizer_interfacesSrvSetAnglesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS 1

    /**
     * @brief Exact C operation binding for Ros2Mypalletizer_interfacesSrvSetCoords.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_call
     */
    struct Ros2Mypalletizer_interfacesSrvSetCoordsBinding
    {
        /**
         * @brief Complete request record for Ros2Mypalletizer_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Request>
         */
        typedef Ros2Mypalletizer_interfacesSrvSetCoords_Request Request;
        /**
         * @brief Complete response record for Ros2Mypalletizer_interfacesSrvSetCoords.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Response>
         */
        typedef Ros2Mypalletizer_interfacesSrvSetCoords_Response Response;

        /**
         * @brief Issue one complete Ros2Mypalletizer_interfacesSrvSetCoords request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Mypalletizer_interfacesSrvSetCoords request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Mypalletizer_interfacesSrvSetCoords ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Mypalletizer_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Mypalletizer_interfacesSrvSetCoordsBinding> Ros2Mypalletizer_interfacesSrvSetCoordsClient;
    /**
     * @brief Owning typed service server for Ros2Mypalletizer_interfacesSrvSetCoords.
     * @details Binds every operation to Ros2Mypalletizer_interfacesSrvSetCoordsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Mypalletizer_interfacesSrvSetCoordsBinding> Ros2Mypalletizer_interfacesSrvSetCoordsServer;
#endif
}  // namespace uwvm_custom
