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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_MOTORGAINS 1

    /** @brief
     * @brief Exact C operation binding for Ros2Interbotix_xs_msgsSrvMotorGains.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_call
     */
    struct Ros2Interbotix_xs_msgsSrvMotorGainsBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Interbotix_xs_msgsSrvMotorGains.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Request>
         */
        typedef Ros2Interbotix_xs_msgsSrvMotorGains_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Interbotix_xs_msgsSrvMotorGains.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Response>
         */
        typedef Ros2Interbotix_xs_msgsSrvMotorGains_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Interbotix_xs_msgsSrvMotorGains request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Interbotix_xs_msgsSrvMotorGains request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Interbotix_xs_msgsSrvMotorGains ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Interbotix_xs_msgsSrvMotorGains.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvMotorGainsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Interbotix_xs_msgsSrvMotorGainsBinding> Ros2Interbotix_xs_msgsSrvMotorGainsClient;
    /** @brief
     * @brief Owning typed service server for Ros2Interbotix_xs_msgsSrvMotorGains.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvMotorGainsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Interbotix_xs_msgsSrvMotorGainsBinding> Ros2Interbotix_xs_msgsSrvMotorGainsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_OPERATINGMODES 1

    /** @brief
     * @brief Exact C operation binding for Ros2Interbotix_xs_msgsSrvOperatingModes.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_call
     */
    struct Ros2Interbotix_xs_msgsSrvOperatingModesBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Interbotix_xs_msgsSrvOperatingModes.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Request>
         */
        typedef Ros2Interbotix_xs_msgsSrvOperatingModes_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Interbotix_xs_msgsSrvOperatingModes.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Response>
         */
        typedef Ros2Interbotix_xs_msgsSrvOperatingModes_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Interbotix_xs_msgsSrvOperatingModes request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Interbotix_xs_msgsSrvOperatingModes request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Interbotix_xs_msgsSrvOperatingModes ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Interbotix_xs_msgsSrvOperatingModes.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvOperatingModesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Interbotix_xs_msgsSrvOperatingModesBinding> Ros2Interbotix_xs_msgsSrvOperatingModesClient;
    /** @brief
     * @brief Owning typed service server for Ros2Interbotix_xs_msgsSrvOperatingModes.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvOperatingModesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Interbotix_xs_msgsSrvOperatingModesBinding> Ros2Interbotix_xs_msgsSrvOperatingModesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REBOOT 1

    /** @brief
     * @brief Exact C operation binding for Ros2Interbotix_xs_msgsSrvReboot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_call
     */
    struct Ros2Interbotix_xs_msgsSrvRebootBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Interbotix_xs_msgsSrvReboot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Request>
         */
        typedef Ros2Interbotix_xs_msgsSrvReboot_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Interbotix_xs_msgsSrvReboot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Response>
         */
        typedef Ros2Interbotix_xs_msgsSrvReboot_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Interbotix_xs_msgsSrvReboot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Interbotix_xs_msgsSrvReboot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Interbotix_xs_msgsSrvReboot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Interbotix_xs_msgsSrvReboot.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvRebootBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Interbotix_xs_msgsSrvRebootBinding> Ros2Interbotix_xs_msgsSrvRebootClient;
    /** @brief
     * @brief Owning typed service server for Ros2Interbotix_xs_msgsSrvReboot.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvRebootBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Interbotix_xs_msgsSrvRebootBinding> Ros2Interbotix_xs_msgsSrvRebootServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_REGISTERVALUES 1

    /** @brief
     * @brief Exact C operation binding for Ros2Interbotix_xs_msgsSrvRegisterValues.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_call
     */
    struct Ros2Interbotix_xs_msgsSrvRegisterValuesBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Interbotix_xs_msgsSrvRegisterValues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Request>
         */
        typedef Ros2Interbotix_xs_msgsSrvRegisterValues_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Interbotix_xs_msgsSrvRegisterValues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Response>
         */
        typedef Ros2Interbotix_xs_msgsSrvRegisterValues_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Interbotix_xs_msgsSrvRegisterValues request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Interbotix_xs_msgsSrvRegisterValues request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Interbotix_xs_msgsSrvRegisterValues ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Interbotix_xs_msgsSrvRegisterValues.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvRegisterValuesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Interbotix_xs_msgsSrvRegisterValuesBinding> Ros2Interbotix_xs_msgsSrvRegisterValuesClient;
    /** @brief
     * @brief Owning typed service server for Ros2Interbotix_xs_msgsSrvRegisterValues.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvRegisterValuesBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Interbotix_xs_msgsSrvRegisterValuesBinding> Ros2Interbotix_xs_msgsSrvRegisterValuesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_ROBOTINFO 1

    /** @brief
     * @brief Exact C operation binding for Ros2Interbotix_xs_msgsSrvRobotInfo.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_call
     */
    struct Ros2Interbotix_xs_msgsSrvRobotInfoBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Interbotix_xs_msgsSrvRobotInfo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Request>
         */
        typedef Ros2Interbotix_xs_msgsSrvRobotInfo_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Interbotix_xs_msgsSrvRobotInfo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Response>
         */
        typedef Ros2Interbotix_xs_msgsSrvRobotInfo_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Interbotix_xs_msgsSrvRobotInfo request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Interbotix_xs_msgsSrvRobotInfo request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Interbotix_xs_msgsSrvRobotInfo ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Interbotix_xs_msgsSrvRobotInfo.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvRobotInfoBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Interbotix_xs_msgsSrvRobotInfoBinding> Ros2Interbotix_xs_msgsSrvRobotInfoClient;
    /** @brief
     * @brief Owning typed service server for Ros2Interbotix_xs_msgsSrvRobotInfo.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvRobotInfoBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Interbotix_xs_msgsSrvRobotInfoBinding> Ros2Interbotix_xs_msgsSrvRobotInfoServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_INTERBOTIX_XS_MSGS_SRV_TORQUEENABLE 1

    /** @brief
     * @brief Exact C operation binding for Ros2Interbotix_xs_msgsSrvTorqueEnable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_call
     */
    struct Ros2Interbotix_xs_msgsSrvTorqueEnableBinding
    {
        /** @brief
         * @brief Complete request record for Ros2Interbotix_xs_msgsSrvTorqueEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Request>
         */
        typedef Ros2Interbotix_xs_msgsSrvTorqueEnable_Request Request;
        /** @brief
         * @brief Complete response record for Ros2Interbotix_xs_msgsSrvTorqueEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Response>
         */
        typedef Ros2Interbotix_xs_msgsSrvTorqueEnable_Response Response;

        /** @brief
         * @brief Issue one complete Ros2Interbotix_xs_msgsSrvTorqueEnable request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_call(cap, &request, &response);
        }

        /** @brief
         * @brief Poll one incoming Ros2Interbotix_xs_msgsSrvTorqueEnable request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_poll(cap, &ticket, &request);
        }

        /** @brief
         * @brief Respond once to one live Ros2Interbotix_xs_msgsSrvTorqueEnable ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_respond(cap, ticket, &response);
        }
    };

    /** @brief
     * @brief Owning typed service client for Ros2Interbotix_xs_msgsSrvTorqueEnable.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvTorqueEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Interbotix_xs_msgsSrvTorqueEnableBinding> Ros2Interbotix_xs_msgsSrvTorqueEnableClient;
    /** @brief
     * @brief Owning typed service server for Ros2Interbotix_xs_msgsSrvTorqueEnable.
     * @details Binds every operation to Ros2Interbotix_xs_msgsSrvTorqueEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Interbotix_xs_msgsSrvTorqueEnableBinding> Ros2Interbotix_xs_msgsSrvTorqueEnableServer;
#endif
}  // namespace uwvm_custom
