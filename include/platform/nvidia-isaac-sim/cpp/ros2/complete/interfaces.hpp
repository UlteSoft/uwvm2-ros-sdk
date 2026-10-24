/** @file Complete typed Service/Action owners for the selected C++ profile. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <nvidia-isaac-sim/c/ros2/complete/interfaces.h>
#include <nvidia-isaac-sim/cpp/ros2/complete/records.hpp>
#include <ros/cpp/roswasm/vendor.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL 1

    /**
     * @brief Exact C operation binding for Ros2Uwvm_isaac_sim_bridgeSrvClockControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_call
     */
    struct Ros2Uwvm_isaac_sim_bridgeSrvClockControlBinding
    {
        /**
         * @brief Complete request record for Ros2Uwvm_isaac_sim_bridgeSrvClockControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>
         */
        typedef Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request Request;
        /**
         * @brief Complete response record for Ros2Uwvm_isaac_sim_bridgeSrvClockControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>
         */
        typedef Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response Response;

        /**
         * @brief Issue one complete Ros2Uwvm_isaac_sim_bridgeSrvClockControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Uwvm_isaac_sim_bridgeSrvClockControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Uwvm_isaac_sim_bridgeSrvClockControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Uwvm_isaac_sim_bridgeSrvClockControl.
     * @details Binds every operation to Ros2Uwvm_isaac_sim_bridgeSrvClockControlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Uwvm_isaac_sim_bridgeSrvClockControlBinding> Ros2Uwvm_isaac_sim_bridgeSrvClockControlClient;
    /**
     * @brief Owning typed service server for Ros2Uwvm_isaac_sim_bridgeSrvClockControl.
     * @details Binds every operation to Ros2Uwvm_isaac_sim_bridgeSrvClockControlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Uwvm_isaac_sim_bridgeSrvClockControlBinding> Ros2Uwvm_isaac_sim_bridgeSrvClockControlServer;
#endif
}  // namespace uwvm_custom
