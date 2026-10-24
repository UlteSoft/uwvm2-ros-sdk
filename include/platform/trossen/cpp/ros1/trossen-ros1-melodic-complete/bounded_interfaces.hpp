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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_MOTORGAINS 1

    /** @brief
     * @brief Exact C operation binding for Ros1Interbotix_xs_msgsMotorGains.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_call
     */
    struct Ros1Interbotix_xs_msgsMotorGainsBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Interbotix_xs_msgsMotorGains.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsRequest>
         */
        typedef Ros1Interbotix_xs_msgsMotorGainsRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Interbotix_xs_msgsMotorGains.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsResponse>
         */
        typedef Ros1Interbotix_xs_msgsMotorGainsResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Interbotix_xs_msgsMotorGains request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Interbotix_xs_msgsMotorGains request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Interbotix_xs_msgsMotorGains ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_MotorGains_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Interbotix_xs_msgsMotorGains.
     * @details Binds every operation to Ros1Interbotix_xs_msgsMotorGainsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Interbotix_xs_msgsMotorGainsBinding> Ros1Interbotix_xs_msgsMotorGainsClient;
    /** @brief
     * @brief Owning typed service server for Ros1Interbotix_xs_msgsMotorGains.
     * @details Binds every operation to Ros1Interbotix_xs_msgsMotorGainsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Interbotix_xs_msgsMotorGainsBinding> Ros1Interbotix_xs_msgsMotorGainsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_OPERATINGMODES 1

    /** @brief
     * @brief Exact C operation binding for Ros1Interbotix_xs_msgsOperatingModes.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_call
     */
    struct Ros1Interbotix_xs_msgsOperatingModesBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Interbotix_xs_msgsOperatingModes.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesRequest>
         */
        typedef Ros1Interbotix_xs_msgsOperatingModesRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Interbotix_xs_msgsOperatingModes.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesResponse>
         */
        typedef Ros1Interbotix_xs_msgsOperatingModesResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Interbotix_xs_msgsOperatingModes request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Interbotix_xs_msgsOperatingModes request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Interbotix_xs_msgsOperatingModes ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModes_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Interbotix_xs_msgsOperatingModes.
     * @details Binds every operation to Ros1Interbotix_xs_msgsOperatingModesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Interbotix_xs_msgsOperatingModesBinding> Ros1Interbotix_xs_msgsOperatingModesClient;
    /** @brief
     * @brief Owning typed service server for Ros1Interbotix_xs_msgsOperatingModes.
     * @details Binds every operation to Ros1Interbotix_xs_msgsOperatingModesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Interbotix_xs_msgsOperatingModesBinding> Ros1Interbotix_xs_msgsOperatingModesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REBOOT 1

    /** @brief
     * @brief Exact C operation binding for Ros1Interbotix_xs_msgsReboot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_interbotix_xs_msgs_Reboot_call
     */
    struct Ros1Interbotix_xs_msgsRebootBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Interbotix_xs_msgsReboot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsRebootRequest>
         */
        typedef Ros1Interbotix_xs_msgsRebootRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Interbotix_xs_msgsReboot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsRebootResponse>
         */
        typedef Ros1Interbotix_xs_msgsRebootResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Interbotix_xs_msgsReboot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_Reboot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_Reboot_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Interbotix_xs_msgsReboot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_Reboot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_Reboot_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Interbotix_xs_msgsReboot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_Reboot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_Reboot_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Interbotix_xs_msgsReboot.
     * @details Binds every operation to Ros1Interbotix_xs_msgsRebootBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Interbotix_xs_msgsRebootBinding> Ros1Interbotix_xs_msgsRebootClient;
    /** @brief
     * @brief Owning typed service server for Ros1Interbotix_xs_msgsReboot.
     * @details Binds every operation to Ros1Interbotix_xs_msgsRebootBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Interbotix_xs_msgsRebootBinding> Ros1Interbotix_xs_msgsRebootServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_REGISTERVALUES 1

    /** @brief
     * @brief Exact C operation binding for Ros1Interbotix_xs_msgsRegisterValues.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_call
     */
    struct Ros1Interbotix_xs_msgsRegisterValuesBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Interbotix_xs_msgsRegisterValues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesRequest>
         */
        typedef Ros1Interbotix_xs_msgsRegisterValuesRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Interbotix_xs_msgsRegisterValues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesResponse>
         */
        typedef Ros1Interbotix_xs_msgsRegisterValuesResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Interbotix_xs_msgsRegisterValues request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Interbotix_xs_msgsRegisterValues request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Interbotix_xs_msgsRegisterValues ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValues_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Interbotix_xs_msgsRegisterValues.
     * @details Binds every operation to Ros1Interbotix_xs_msgsRegisterValuesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Interbotix_xs_msgsRegisterValuesBinding> Ros1Interbotix_xs_msgsRegisterValuesClient;
    /** @brief
     * @brief Owning typed service server for Ros1Interbotix_xs_msgsRegisterValues.
     * @details Binds every operation to Ros1Interbotix_xs_msgsRegisterValuesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Interbotix_xs_msgsRegisterValuesBinding> Ros1Interbotix_xs_msgsRegisterValuesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_ROBOTINFO 1

    /** @brief
     * @brief Exact C operation binding for Ros1Interbotix_xs_msgsRobotInfo.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_call
     */
    struct Ros1Interbotix_xs_msgsRobotInfoBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Interbotix_xs_msgsRobotInfo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoRequest>
         */
        typedef Ros1Interbotix_xs_msgsRobotInfoRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Interbotix_xs_msgsRobotInfo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoResponse>
         */
        typedef Ros1Interbotix_xs_msgsRobotInfoResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Interbotix_xs_msgsRobotInfo request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Interbotix_xs_msgsRobotInfo request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Interbotix_xs_msgsRobotInfo ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfo_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Interbotix_xs_msgsRobotInfo.
     * @details Binds every operation to Ros1Interbotix_xs_msgsRobotInfoBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Interbotix_xs_msgsRobotInfoBinding> Ros1Interbotix_xs_msgsRobotInfoClient;
    /** @brief
     * @brief Owning typed service server for Ros1Interbotix_xs_msgsRobotInfo.
     * @details Binds every operation to Ros1Interbotix_xs_msgsRobotInfoBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Interbotix_xs_msgsRobotInfoBinding> Ros1Interbotix_xs_msgsRobotInfoServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_INTERBOTIX_XS_MSGS_TORQUEENABLE 1

    /** @brief
     * @brief Exact C operation binding for Ros1Interbotix_xs_msgsTorqueEnable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_call
     */
    struct Ros1Interbotix_xs_msgsTorqueEnableBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Interbotix_xs_msgsTorqueEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableRequest>
         */
        typedef Ros1Interbotix_xs_msgsTorqueEnableRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Interbotix_xs_msgsTorqueEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableResponse>
         */
        typedef Ros1Interbotix_xs_msgsTorqueEnableResponse Response;

        /** @brief
         * @brief Issue one complete Ros1Interbotix_xs_msgsTorqueEnable request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros1Interbotix_xs_msgsTorqueEnable request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros1Interbotix_xs_msgsTorqueEnable ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnable_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros1Interbotix_xs_msgsTorqueEnable.
     * @details Binds every operation to Ros1Interbotix_xs_msgsTorqueEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Interbotix_xs_msgsTorqueEnableBinding> Ros1Interbotix_xs_msgsTorqueEnableClient;
    /** @brief
     * @brief Owning typed service server for Ros1Interbotix_xs_msgsTorqueEnable.
     * @details Binds every operation to Ros1Interbotix_xs_msgsTorqueEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Interbotix_xs_msgsTorqueEnableBinding> Ros1Interbotix_xs_msgsTorqueEnableServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERR 1

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsClearErr.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErr_call
     */
    struct Ros1Xarm_msgsClearErrBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsClearErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrRequest>
         */
        typedef Ros1Xarm_msgsClearErrRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsClearErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrResponse>
         */
        typedef Ros1Xarm_msgsClearErrResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsClearErr.
     * @details Binds every operation to Ros1Xarm_msgsClearErrBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsClearErrBinding> Ros1Xarm_msgsClearErrClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsConfigToolModbus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbus_call
     */
    struct Ros1Xarm_msgsConfigToolModbusBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsConfigToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest>
         */
        typedef Ros1Xarm_msgsConfigToolModbusRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsConfigToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse>
         */
        typedef Ros1Xarm_msgsConfigToolModbusResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsConfigToolModbus.
     * @details Binds every operation to Ros1Xarm_msgsConfigToolModbusBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsConfigToolModbusBinding> Ros1Xarm_msgsConfigToolModbusClient;
    /** @brief
     * @brief Owning typed service server for Ros1Xarm_msgsConfigToolModbus.
     * @details Binds every operation to Ros1Xarm_msgsConfigToolModbusBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsConfigToolModbusBinding> Ros1Xarm_msgsConfigToolModbusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIO 1

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsGetAnalogIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIO_call
     */
    struct Ros1Xarm_msgsGetAnalogIOBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsGetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest>
         */
        typedef Ros1Xarm_msgsGetAnalogIORequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsGetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse>
         */
        typedef Ros1Xarm_msgsGetAnalogIOResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsGetAnalogIO.
     * @details Binds every operation to Ros1Xarm_msgsGetAnalogIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetAnalogIOBinding> Ros1Xarm_msgsGetAnalogIOClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsGetControllerDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIO_call
     */
    struct Ros1Xarm_msgsGetControllerDigitalIOBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsGetControllerDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest>
         */
        typedef Ros1Xarm_msgsGetControllerDigitalIORequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsGetControllerDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse>
         */
        typedef Ros1Xarm_msgsGetControllerDigitalIOResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsGetControllerDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsGetControllerDigitalIOBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetControllerDigitalIOBinding> Ros1Xarm_msgsGetControllerDigitalIOClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsGetDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIO_call
     */
    struct Ros1Xarm_msgsGetDigitalIOBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsGetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest>
         */
        typedef Ros1Xarm_msgsGetDigitalIORequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsGetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse>
         */
        typedef Ros1Xarm_msgsGetDigitalIOResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsGetDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsGetDigitalIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetDigitalIOBinding> Ros1Xarm_msgsGetDigitalIOClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsGetErr.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GetErr_call
     */
    struct Ros1Xarm_msgsGetErrBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsGetErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetErrRequest>
         */
        typedef Ros1Xarm_msgsGetErrRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsGetErr.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetErrResponse>
         */
        typedef Ros1Xarm_msgsGetErrResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsGetErr.
     * @details Binds every operation to Ros1Xarm_msgsGetErrBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGetErrBinding> Ros1Xarm_msgsGetErrClient;
    /** @brief
     * @brief Owning typed service server for Ros1Xarm_msgsGetErr.
     * @details Binds every operation to Ros1Xarm_msgsGetErrBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsGetErrBinding> Ros1Xarm_msgsGetErrServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIG 1

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsGripperConfig.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GripperConfig_call
     */
    struct Ros1Xarm_msgsGripperConfigBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsGripperConfig.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigRequest>
         */
        typedef Ros1Xarm_msgsGripperConfigRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsGripperConfig.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigResponse>
         */
        typedef Ros1Xarm_msgsGripperConfigResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsGripperConfig.
     * @details Binds every operation to Ros1Xarm_msgsGripperConfigBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGripperConfigBinding> Ros1Xarm_msgsGripperConfigClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsGripperMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GripperMove_call
     */
    struct Ros1Xarm_msgsGripperMoveBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsGripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveRequest>
         */
        typedef Ros1Xarm_msgsGripperMoveRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsGripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveResponse>
         */
        typedef Ros1Xarm_msgsGripperMoveResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsGripperMove.
     * @details Binds every operation to Ros1Xarm_msgsGripperMoveBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGripperMoveBinding> Ros1Xarm_msgsGripperMoveClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsGripperState.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_GripperState_call
     */
    struct Ros1Xarm_msgsGripperStateBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsGripperState.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperStateRequest>
         */
        typedef Ros1Xarm_msgsGripperStateRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsGripperState.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperStateResponse>
         */
        typedef Ros1Xarm_msgsGripperStateResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsGripperState.
     * @details Binds every operation to Ros1Xarm_msgsGripperStateBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsGripperStateBinding> Ros1Xarm_msgsGripperStateClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_Move_call
     */
    struct Ros1Xarm_msgsMoveBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveRequest>
         */
        typedef Ros1Xarm_msgsMoveRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveResponse>
         */
        typedef Ros1Xarm_msgsMoveResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsMove.
     * @details Binds every operation to Ros1Xarm_msgsMoveBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsMoveBinding> Ros1Xarm_msgsMoveClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsSetAxis.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxis_call
     */
    struct Ros1Xarm_msgsSetAxisBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsSetAxis.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisRequest>
         */
        typedef Ros1Xarm_msgsSetAxisRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsSetAxis.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisResponse>
         */
        typedef Ros1Xarm_msgsSetAxisResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsSetAxis.
     * @details Binds every operation to Ros1Xarm_msgsSetAxisBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetAxisBinding> Ros1Xarm_msgsSetAxisClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsSetDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIO_call
     */
    struct Ros1Xarm_msgsSetDigitalIOBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsSetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest>
         */
        typedef Ros1Xarm_msgsSetDigitalIORequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsSetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse>
         */
        typedef Ros1Xarm_msgsSetDigitalIOResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsSetDigitalIO.
     * @details Binds every operation to Ros1Xarm_msgsSetDigitalIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetDigitalIOBinding> Ros1Xarm_msgsSetDigitalIOClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsSetInt16.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16_call
     */
    struct Ros1Xarm_msgsSetInt16Binding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsSetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Request>
         */
        typedef Ros1Xarm_msgsSetInt16Request Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsSetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Response>
         */
        typedef Ros1Xarm_msgsSetInt16Response Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsSetInt16.
     * @details Binds every operation to Ros1Xarm_msgsSetInt16Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetInt16Binding> Ros1Xarm_msgsSetInt16Client;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsSetLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetLoad_call
     */
    struct Ros1Xarm_msgsSetLoadBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetLoadRequest>
         */
        typedef Ros1Xarm_msgsSetLoadRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsSetLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetLoadResponse>
         */
        typedef Ros1Xarm_msgsSetLoadResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsSetLoad.
     * @details Binds every operation to Ros1Xarm_msgsSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetLoadBinding> Ros1Xarm_msgsSetLoadClient;
    /** @brief
     * @brief Owning typed service server for Ros1Xarm_msgsSetLoad.
     * @details Binds every operation to Ros1Xarm_msgsSetLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsSetLoadBinding> Ros1Xarm_msgsSetLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUS 1

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsSetToolModbus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_SetToolModbus_call
     */
    struct Ros1Xarm_msgsSetToolModbusBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsSetToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest>
         */
        typedef Ros1Xarm_msgsSetToolModbusRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsSetToolModbus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse>
         */
        typedef Ros1Xarm_msgsSetToolModbusResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsSetToolModbus.
     * @details Binds every operation to Ros1Xarm_msgsSetToolModbusBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsSetToolModbusBinding> Ros1Xarm_msgsSetToolModbusClient;
    /** @brief
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

    /** @brief
     * @brief Exact C operation binding for Ros1Xarm_msgsTCPOffset.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffset_call
     */
    struct Ros1Xarm_msgsTCPOffsetBinding
    {
        /** @brief
         * @brief Complete request record for Ros1Xarm_msgsTCPOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest>
         */
        typedef Ros1Xarm_msgsTCPOffsetRequest Request;
        /** @brief
         * @brief Complete response record for Ros1Xarm_msgsTCPOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse>
         */
        typedef Ros1Xarm_msgsTCPOffsetResponse Response;

        /** @brief
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

        /** @brief
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

        /** @brief
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

    /** @brief
     * @brief Owning typed service client for Ros1Xarm_msgsTCPOffset.
     * @details Binds every operation to Ros1Xarm_msgsTCPOffsetBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Xarm_msgsTCPOffsetBinding> Ros1Xarm_msgsTCPOffsetClient;
    /** @brief
     * @brief Owning typed service server for Ros1Xarm_msgsTCPOffset.
     * @details Binds every operation to Ros1Xarm_msgsTCPOffsetBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Xarm_msgsTCPOffsetBinding> Ros1Xarm_msgsTCPOffsetServer;
#endif
}  // namespace uwvm_custom
