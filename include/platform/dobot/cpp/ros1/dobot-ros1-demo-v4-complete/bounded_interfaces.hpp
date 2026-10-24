/**
 * @file bounded_interfaces.hpp
 * @brief Bind complete original service/action components to checked C++ client and server owners.
 * @details This dobot source domain retains every original request, response, goal, feedback and result
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
#include <dobot/c/ros1/dobot-ros1-demo-v4-complete/bounded_interfaces.h>
#include <dobot/cpp/ros1/dobot-ros1-demo-v4-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4AI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_AI_call
     */
    struct Ros1Rosdemo_v4AIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4AI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AIRequest>
         */
        typedef Ros1Rosdemo_v4AIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4AI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AIResponse>
         */
        typedef Ros1Rosdemo_v4AIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4AI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_AI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4AI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_AI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_AI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4AI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_AI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4AI.
     * @details Binds every operation to Ros1Rosdemo_v4AIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4AIBinding> Ros1Rosdemo_v4AIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4AI.
     * @details Binds every operation to Ros1Rosdemo_v4AIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4AIBinding> Ros1Rosdemo_v4AIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4AO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_AO_call
     */
    struct Ros1Rosdemo_v4AOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4AO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AORequest>
         */
        typedef Ros1Rosdemo_v4AORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4AO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AOResponse>
         */
        typedef Ros1Rosdemo_v4AOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4AO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_AO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4AO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_AO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_AO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4AO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_AO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4AO.
     * @details Binds every operation to Ros1Rosdemo_v4AOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4AOBinding> Ros1Rosdemo_v4AOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4AO.
     * @details Binds every operation to Ros1Rosdemo_v4AOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4AOBinding> Ros1Rosdemo_v4AOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_AOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4AOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_AOInstant_call
     */
    struct Ros1Rosdemo_v4AOInstantBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4AOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AOInstantRequest>
         */
        typedef Ros1Rosdemo_v4AOInstantRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4AOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AOInstantResponse>
         */
        typedef Ros1Rosdemo_v4AOInstantResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4AOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_AOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4AOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_AOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_AOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4AOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_AOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4AOInstant.
     * @details Binds every operation to Ros1Rosdemo_v4AOInstantBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4AOInstantBinding> Ros1Rosdemo_v4AOInstantClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4AOInstant.
     * @details Binds every operation to Ros1Rosdemo_v4AOInstantBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4AOInstantBinding> Ros1Rosdemo_v4AOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4AccJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_AccJ_call
     */
    struct Ros1Rosdemo_v4AccJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4AccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AccJRequest>
         */
        typedef Ros1Rosdemo_v4AccJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4AccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AccJResponse>
         */
        typedef Ros1Rosdemo_v4AccJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4AccJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_AccJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AccJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4AccJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_AccJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_AccJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4AccJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_AccJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AccJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4AccJ.
     * @details Binds every operation to Ros1Rosdemo_v4AccJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4AccJBinding> Ros1Rosdemo_v4AccJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4AccJ.
     * @details Binds every operation to Ros1Rosdemo_v4AccJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4AccJBinding> Ros1Rosdemo_v4AccJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ACCL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4AccL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_AccL_call
     */
    struct Ros1Rosdemo_v4AccLBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4AccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AccLRequest>
         */
        typedef Ros1Rosdemo_v4AccLRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4AccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4AccLResponse>
         */
        typedef Ros1Rosdemo_v4AccLResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4AccL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_AccL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AccL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4AccL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_AccL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_AccL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4AccL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_AccL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_AccL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4AccL.
     * @details Binds every operation to Ros1Rosdemo_v4AccLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4AccLBinding> Ros1Rosdemo_v4AccLClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4AccL.
     * @details Binds every operation to Ros1Rosdemo_v4AccLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4AccLBinding> Ros1Rosdemo_v4AccLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ARC 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4Arc.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_Arc_call
     */
    struct Ros1Rosdemo_v4ArcBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4Arc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ArcRequest>
         */
        typedef Ros1Rosdemo_v4ArcRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4Arc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ArcResponse>
         */
        typedef Ros1Rosdemo_v4ArcResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4Arc request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_Arc_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Arc_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4Arc request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_Arc_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_Arc_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4Arc ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_Arc_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Arc_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4Arc.
     * @details Binds every operation to Ros1Rosdemo_v4ArcBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ArcBinding> Ros1Rosdemo_v4ArcClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4Arc.
     * @details Binds every operation to Ros1Rosdemo_v4ArcBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ArcBinding> Ros1Rosdemo_v4ArcServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_BRAKECONTROL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4BrakeControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_BrakeControl_call
     */
    struct Ros1Rosdemo_v4BrakeControlBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4BrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4BrakeControlRequest>
         */
        typedef Ros1Rosdemo_v4BrakeControlRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4BrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4BrakeControlResponse>
         */
        typedef Ros1Rosdemo_v4BrakeControlResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4BrakeControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_BrakeControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_BrakeControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4BrakeControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_BrakeControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_BrakeControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4BrakeControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_BrakeControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_BrakeControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4BrakeControl.
     * @details Binds every operation to Ros1Rosdemo_v4BrakeControlBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4BrakeControlBinding> Ros1Rosdemo_v4BrakeControlClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4BrakeControl.
     * @details Binds every operation to Ros1Rosdemo_v4BrakeControlBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4BrakeControlBinding> Ros1Rosdemo_v4BrakeControlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4CP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_CP_call
     */
    struct Ros1Rosdemo_v4CPBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4CP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CPRequest>
         */
        typedef Ros1Rosdemo_v4CPRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4CP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CPResponse>
         */
        typedef Ros1Rosdemo_v4CPResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4CP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_CP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_CP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4CP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_CP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_CP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4CP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_CP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_CP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4CP.
     * @details Binds every operation to Ros1Rosdemo_v4CPBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4CPBinding> Ros1Rosdemo_v4CPClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4CP.
     * @details Binds every operation to Ros1Rosdemo_v4CPBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4CPBinding> Ros1Rosdemo_v4CPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4CalcTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_CalcTool_call
     */
    struct Ros1Rosdemo_v4CalcToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4CalcTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CalcToolRequest>
         */
        typedef Ros1Rosdemo_v4CalcToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4CalcTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CalcToolResponse>
         */
        typedef Ros1Rosdemo_v4CalcToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4CalcTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_CalcTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_CalcTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4CalcTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_CalcTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_CalcTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4CalcTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_CalcTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_CalcTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4CalcTool.
     * @details Binds every operation to Ros1Rosdemo_v4CalcToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4CalcToolBinding> Ros1Rosdemo_v4CalcToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4CalcTool.
     * @details Binds every operation to Ros1Rosdemo_v4CalcToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4CalcToolBinding> Ros1Rosdemo_v4CalcToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CALCUSER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4CalcUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_CalcUser_call
     */
    struct Ros1Rosdemo_v4CalcUserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4CalcUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CalcUserRequest>
         */
        typedef Ros1Rosdemo_v4CalcUserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4CalcUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CalcUserResponse>
         */
        typedef Ros1Rosdemo_v4CalcUserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4CalcUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_CalcUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_CalcUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4CalcUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_CalcUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_CalcUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4CalcUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_CalcUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_CalcUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4CalcUser.
     * @details Binds every operation to Ros1Rosdemo_v4CalcUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4CalcUserBinding> Ros1Rosdemo_v4CalcUserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4CalcUser.
     * @details Binds every operation to Ros1Rosdemo_v4CalcUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4CalcUserBinding> Ros1Rosdemo_v4CalcUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CIRCLE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4Circle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_Circle_call
     */
    struct Ros1Rosdemo_v4CircleBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4Circle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CircleRequest>
         */
        typedef Ros1Rosdemo_v4CircleRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4Circle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4CircleResponse>
         */
        typedef Ros1Rosdemo_v4CircleResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4Circle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_Circle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Circle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4Circle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_Circle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_Circle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4Circle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_Circle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Circle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4Circle.
     * @details Binds every operation to Ros1Rosdemo_v4CircleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4CircleBinding> Ros1Rosdemo_v4CircleClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4Circle.
     * @details Binds every operation to Ros1Rosdemo_v4CircleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4CircleBinding> Ros1Rosdemo_v4CircleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CLEARERROR 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ClearError.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ClearError_call
     */
    struct Ros1Rosdemo_v4ClearErrorBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ClearErrorRequest>
         */
        typedef Ros1Rosdemo_v4ClearErrorRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ClearErrorResponse>
         */
        typedef Ros1Rosdemo_v4ClearErrorResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ClearError request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ClearError_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ClearError_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ClearError request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ClearError_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ClearError_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ClearError ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ClearError_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ClearError_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ClearError.
     * @details Binds every operation to Ros1Rosdemo_v4ClearErrorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ClearErrorBinding> Ros1Rosdemo_v4ClearErrorClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ClearError.
     * @details Binds every operation to Ros1Rosdemo_v4ClearErrorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ClearErrorBinding> Ros1Rosdemo_v4ClearErrorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_CONTINUE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4Continue.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_Continue_call
     */
    struct Ros1Rosdemo_v4ContinueBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4Continue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ContinueRequest>
         */
        typedef Ros1Rosdemo_v4ContinueRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4Continue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ContinueResponse>
         */
        typedef Ros1Rosdemo_v4ContinueResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4Continue request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_Continue_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Continue_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4Continue request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_Continue_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_Continue_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4Continue ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_Continue_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Continue_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4Continue.
     * @details Binds every operation to Ros1Rosdemo_v4ContinueBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ContinueBinding> Ros1Rosdemo_v4ContinueClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4Continue.
     * @details Binds every operation to Ros1Rosdemo_v4ContinueBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ContinueBinding> Ros1Rosdemo_v4ContinueServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4DI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_DI_call
     */
    struct Ros1Rosdemo_v4DIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4DI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DIRequest>
         */
        typedef Ros1Rosdemo_v4DIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4DI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DIResponse>
         */
        typedef Ros1Rosdemo_v4DIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4DI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_DI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4DI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_DI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_DI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4DI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_DI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4DI.
     * @details Binds every operation to Ros1Rosdemo_v4DIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4DIBinding> Ros1Rosdemo_v4DIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4DI.
     * @details Binds every operation to Ros1Rosdemo_v4DIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4DIBinding> Ros1Rosdemo_v4DIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DIGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4DIGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_DIGroup_call
     */
    struct Ros1Rosdemo_v4DIGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4DIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DIGroupRequest>
         */
        typedef Ros1Rosdemo_v4DIGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4DIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DIGroupResponse>
         */
        typedef Ros1Rosdemo_v4DIGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4DIGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_DIGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DIGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4DIGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_DIGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_DIGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4DIGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_DIGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DIGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4DIGroup.
     * @details Binds every operation to Ros1Rosdemo_v4DIGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4DIGroupBinding> Ros1Rosdemo_v4DIGroupClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4DIGroup.
     * @details Binds every operation to Ros1Rosdemo_v4DIGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4DIGroupBinding> Ros1Rosdemo_v4DIGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4DO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_DO_call
     */
    struct Ros1Rosdemo_v4DOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4DO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DORequest>
         */
        typedef Ros1Rosdemo_v4DORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4DO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DOResponse>
         */
        typedef Ros1Rosdemo_v4DOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4DO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_DO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4DO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_DO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_DO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4DO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_DO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4DO.
     * @details Binds every operation to Ros1Rosdemo_v4DOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4DOBinding> Ros1Rosdemo_v4DOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4DO.
     * @details Binds every operation to Ros1Rosdemo_v4DOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4DOBinding> Ros1Rosdemo_v4DOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4DOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_DOGroup_call
     */
    struct Ros1Rosdemo_v4DOGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4DOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DOGroupRequest>
         */
        typedef Ros1Rosdemo_v4DOGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4DOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DOGroupResponse>
         */
        typedef Ros1Rosdemo_v4DOGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4DOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_DOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4DOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_DOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_DOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4DOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_DOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4DOGroup.
     * @details Binds every operation to Ros1Rosdemo_v4DOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4DOGroupBinding> Ros1Rosdemo_v4DOGroupClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4DOGroup.
     * @details Binds every operation to Ros1Rosdemo_v4DOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4DOGroupBinding> Ros1Rosdemo_v4DOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4DOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_DOInstant_call
     */
    struct Ros1Rosdemo_v4DOInstantBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4DOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DOInstantRequest>
         */
        typedef Ros1Rosdemo_v4DOInstantRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4DOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DOInstantResponse>
         */
        typedef Ros1Rosdemo_v4DOInstantResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4DOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_DOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4DOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_DOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_DOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4DOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_DOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4DOInstant.
     * @details Binds every operation to Ros1Rosdemo_v4DOInstantBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4DOInstantBinding> Ros1Rosdemo_v4DOInstantClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4DOInstant.
     * @details Binds every operation to Ros1Rosdemo_v4DOInstantBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4DOInstantBinding> Ros1Rosdemo_v4DOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DISABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4DisableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_DisableRobot_call
     */
    struct Ros1Rosdemo_v4DisableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4DisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DisableRobotRequest>
         */
        typedef Ros1Rosdemo_v4DisableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4DisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DisableRobotResponse>
         */
        typedef Ros1Rosdemo_v4DisableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4DisableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_DisableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DisableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4DisableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_DisableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_DisableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4DisableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_DisableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DisableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4DisableRobot.
     * @details Binds every operation to Ros1Rosdemo_v4DisableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4DisableRobotBinding> Ros1Rosdemo_v4DisableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4DisableRobot.
     * @details Binds every operation to Ros1Rosdemo_v4DisableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4DisableRobotBinding> Ros1Rosdemo_v4DisableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_DRAGSENSIVITY 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4DragSensivity.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_DragSensivity_call
     */
    struct Ros1Rosdemo_v4DragSensivityBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4DragSensivity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DragSensivityRequest>
         */
        typedef Ros1Rosdemo_v4DragSensivityRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4DragSensivity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4DragSensivityResponse>
         */
        typedef Ros1Rosdemo_v4DragSensivityResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4DragSensivity request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_DragSensivity_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DragSensivity_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4DragSensivity request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_DragSensivity_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_DragSensivity_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4DragSensivity ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_DragSensivity_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_DragSensivity_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4DragSensivity.
     * @details Binds every operation to Ros1Rosdemo_v4DragSensivityBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4DragSensivityBinding> Ros1Rosdemo_v4DragSensivityClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4DragSensivity.
     * @details Binds every operation to Ros1Rosdemo_v4DragSensivityBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4DragSensivityBinding> Ros1Rosdemo_v4DragSensivityServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_EMERGENCYSTOP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4EmergencyStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_EmergencyStop_call
     */
    struct Ros1Rosdemo_v4EmergencyStopBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4EmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4EmergencyStopRequest>
         */
        typedef Ros1Rosdemo_v4EmergencyStopRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4EmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4EmergencyStopResponse>
         */
        typedef Ros1Rosdemo_v4EmergencyStopResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4EmergencyStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_EmergencyStop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_EmergencyStop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4EmergencyStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_EmergencyStop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_EmergencyStop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4EmergencyStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_EmergencyStop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_EmergencyStop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4EmergencyStop.
     * @details Binds every operation to Ros1Rosdemo_v4EmergencyStopBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4EmergencyStopBinding> Ros1Rosdemo_v4EmergencyStopClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4EmergencyStop.
     * @details Binds every operation to Ros1Rosdemo_v4EmergencyStopBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4EmergencyStopBinding> Ros1Rosdemo_v4EmergencyStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4EnableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_EnableRobot_call
     */
    struct Ros1Rosdemo_v4EnableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4EnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4EnableRobotRequest>
         */
        typedef Ros1Rosdemo_v4EnableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4EnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4EnableRobotResponse>
         */
        typedef Ros1Rosdemo_v4EnableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4EnableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_EnableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_EnableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4EnableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_EnableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_EnableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4EnableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_EnableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_EnableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4EnableRobot.
     * @details Binds every operation to Ros1Rosdemo_v4EnableRobotBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4EnableRobotBinding> Ros1Rosdemo_v4EnableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4EnableRobot.
     * @details Binds every operation to Ros1Rosdemo_v4EnableRobotBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4EnableRobotBinding> Ros1Rosdemo_v4EnableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ENABLESAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4EnableSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_call
     */
    struct Ros1Rosdemo_v4EnableSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4EnableSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4EnableSafeSkinRequest>
         */
        typedef Ros1Rosdemo_v4EnableSafeSkinRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4EnableSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4EnableSafeSkinResponse>
         */
        typedef Ros1Rosdemo_v4EnableSafeSkinResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4EnableSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4EnableSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4EnableSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_EnableSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4EnableSafeSkin.
     * @details Binds every operation to Ros1Rosdemo_v4EnableSafeSkinBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4EnableSafeSkinBinding> Ros1Rosdemo_v4EnableSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4EnableSafeSkin.
     * @details Binds every operation to Ros1Rosdemo_v4EnableSafeSkinBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4EnableSafeSkinBinding> Ros1Rosdemo_v4EnableSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETAO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetAO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetAO_call
     */
    struct Ros1Rosdemo_v4GetAOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetAORequest>
         */
        typedef Ros1Rosdemo_v4GetAORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetAOResponse>
         */
        typedef Ros1Rosdemo_v4GetAOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetAO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetAO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetAO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetAO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetAO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetAO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetAO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetAO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetAO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetAO.
     * @details Binds every operation to Ros1Rosdemo_v4GetAOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetAOBinding> Ros1Rosdemo_v4GetAOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetAO.
     * @details Binds every operation to Ros1Rosdemo_v4GetAOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetAOBinding> Ros1Rosdemo_v4GetAOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETANGLE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetAngle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetAngle_call
     */
    struct Ros1Rosdemo_v4GetAngleBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetAngleRequest>
         */
        typedef Ros1Rosdemo_v4GetAngleRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetAngleResponse>
         */
        typedef Ros1Rosdemo_v4GetAngleResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetAngle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetAngle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetAngle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetAngle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetAngle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetAngle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetAngle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetAngle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetAngle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetAngle.
     * @details Binds every operation to Ros1Rosdemo_v4GetAngleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetAngleBinding> Ros1Rosdemo_v4GetAngleClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetAngle.
     * @details Binds every operation to Ros1Rosdemo_v4GetAngleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetAngleBinding> Ros1Rosdemo_v4GetAngleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetCoils_call
     */
    struct Ros1Rosdemo_v4GetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetCoilsRequest>
         */
        typedef Ros1Rosdemo_v4GetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetCoilsResponse>
         */
        typedef Ros1Rosdemo_v4GetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetCoils.
     * @details Binds every operation to Ros1Rosdemo_v4GetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetCoilsBinding> Ros1Rosdemo_v4GetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetCoils.
     * @details Binds every operation to Ros1Rosdemo_v4GetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetCoilsBinding> Ros1Rosdemo_v4GetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETCURRENTCOMMANDID 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetCurrentCommandId.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_call
     */
    struct Ros1Rosdemo_v4GetCurrentCommandIdBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetCurrentCommandId.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetCurrentCommandIdRequest>
         */
        typedef Ros1Rosdemo_v4GetCurrentCommandIdRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetCurrentCommandId.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetCurrentCommandIdResponse>
         */
        typedef Ros1Rosdemo_v4GetCurrentCommandIdResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetCurrentCommandId request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetCurrentCommandId request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetCurrentCommandId ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetCurrentCommandId_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetCurrentCommandId.
     * @details Binds every operation to Ros1Rosdemo_v4GetCurrentCommandIdBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetCurrentCommandIdBinding> Ros1Rosdemo_v4GetCurrentCommandIdClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetCurrentCommandId.
     * @details Binds every operation to Ros1Rosdemo_v4GetCurrentCommandIdBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetCurrentCommandIdBinding> Ros1Rosdemo_v4GetCurrentCommandIdServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetDO_call
     */
    struct Ros1Rosdemo_v4GetDOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetDORequest>
         */
        typedef Ros1Rosdemo_v4GetDORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetDOResponse>
         */
        typedef Ros1Rosdemo_v4GetDOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetDO.
     * @details Binds every operation to Ros1Rosdemo_v4GetDOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetDOBinding> Ros1Rosdemo_v4GetDOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetDO.
     * @details Binds every operation to Ros1Rosdemo_v4GetDOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetDOBinding> Ros1Rosdemo_v4GetDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETDOGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetDOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetDOGroup_call
     */
    struct Ros1Rosdemo_v4GetDOGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetDOGroupRequest>
         */
        typedef Ros1Rosdemo_v4GetDOGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetDOGroupResponse>
         */
        typedef Ros1Rosdemo_v4GetDOGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetDOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetDOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetDOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetDOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetDOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetDOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetDOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetDOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetDOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetDOGroup.
     * @details Binds every operation to Ros1Rosdemo_v4GetDOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetDOGroupBinding> Ros1Rosdemo_v4GetDOGroupClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetDOGroup.
     * @details Binds every operation to Ros1Rosdemo_v4GetDOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetDOGroupBinding> Ros1Rosdemo_v4GetDOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETERRORID 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetErrorID.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetErrorID_call
     */
    struct Ros1Rosdemo_v4GetErrorIDBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetErrorIDRequest>
         */
        typedef Ros1Rosdemo_v4GetErrorIDRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetErrorIDResponse>
         */
        typedef Ros1Rosdemo_v4GetErrorIDResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetErrorID request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetErrorID_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetErrorID_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetErrorID request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetErrorID_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetErrorID_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetErrorID ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetErrorID_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetErrorID_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetErrorID.
     * @details Binds every operation to Ros1Rosdemo_v4GetErrorIDBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetErrorIDBinding> Ros1Rosdemo_v4GetErrorIDClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetErrorID.
     * @details Binds every operation to Ros1Rosdemo_v4GetErrorIDBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetErrorIDBinding> Ros1Rosdemo_v4GetErrorIDServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_call
     */
    struct Ros1Rosdemo_v4GetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetHoldRegsRequest>
         */
        typedef Ros1Rosdemo_v4GetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetHoldRegsResponse>
         */
        typedef Ros1Rosdemo_v4GetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v4GetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetHoldRegsBinding> Ros1Rosdemo_v4GetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v4GetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetHoldRegsBinding> Ros1Rosdemo_v4GetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINBITS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetInBits.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetInBits_call
     */
    struct Ros1Rosdemo_v4GetInBitsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInBitsRequest>
         */
        typedef Ros1Rosdemo_v4GetInBitsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInBitsResponse>
         */
        typedef Ros1Rosdemo_v4GetInBitsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetInBits request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInBits_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInBits_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetInBits request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInBits_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInBits_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetInBits ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInBits_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInBits_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetInBits.
     * @details Binds every operation to Ros1Rosdemo_v4GetInBitsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetInBitsBinding> Ros1Rosdemo_v4GetInBitsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetInBits.
     * @details Binds every operation to Ros1Rosdemo_v4GetInBitsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetInBitsBinding> Ros1Rosdemo_v4GetInBitsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINREGS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetInRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetInRegs_call
     */
    struct Ros1Rosdemo_v4GetInRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInRegsRequest>
         */
        typedef Ros1Rosdemo_v4GetInRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInRegsResponse>
         */
        typedef Ros1Rosdemo_v4GetInRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetInRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetInRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetInRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetInRegs.
     * @details Binds every operation to Ros1Rosdemo_v4GetInRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetInRegsBinding> Ros1Rosdemo_v4GetInRegsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetInRegs.
     * @details Binds every operation to Ros1Rosdemo_v4GetInRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetInRegsBinding> Ros1Rosdemo_v4GetInRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetInputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetInputBool_call
     */
    struct Ros1Rosdemo_v4GetInputBoolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetInputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInputBoolRequest>
         */
        typedef Ros1Rosdemo_v4GetInputBoolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetInputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInputBoolResponse>
         */
        typedef Ros1Rosdemo_v4GetInputBoolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetInputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetInputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetInputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetInputBool.
     * @details Binds every operation to Ros1Rosdemo_v4GetInputBoolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetInputBoolBinding> Ros1Rosdemo_v4GetInputBoolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetInputBool.
     * @details Binds every operation to Ros1Rosdemo_v4GetInputBoolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetInputBoolBinding> Ros1Rosdemo_v4GetInputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetInputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetInputFloat_call
     */
    struct Ros1Rosdemo_v4GetInputFloatBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetInputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInputFloatRequest>
         */
        typedef Ros1Rosdemo_v4GetInputFloatRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetInputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInputFloatResponse>
         */
        typedef Ros1Rosdemo_v4GetInputFloatResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetInputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetInputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetInputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetInputFloat.
     * @details Binds every operation to Ros1Rosdemo_v4GetInputFloatBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetInputFloatBinding> Ros1Rosdemo_v4GetInputFloatClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetInputFloat.
     * @details Binds every operation to Ros1Rosdemo_v4GetInputFloatBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetInputFloatBinding> Ros1Rosdemo_v4GetInputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETINPUTINT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetInputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetInputInt_call
     */
    struct Ros1Rosdemo_v4GetInputIntBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetInputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInputIntRequest>
         */
        typedef Ros1Rosdemo_v4GetInputIntRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetInputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetInputIntResponse>
         */
        typedef Ros1Rosdemo_v4GetInputIntResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetInputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetInputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetInputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetInputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetInputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetInputInt.
     * @details Binds every operation to Ros1Rosdemo_v4GetInputIntBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetInputIntBinding> Ros1Rosdemo_v4GetInputIntClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetInputInt.
     * @details Binds every operation to Ros1Rosdemo_v4GetInputIntBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetInputIntBinding> Ros1Rosdemo_v4GetInputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetOutputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetOutputBool_call
     */
    struct Ros1Rosdemo_v4GetOutputBoolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetOutputBoolRequest>
         */
        typedef Ros1Rosdemo_v4GetOutputBoolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetOutputBoolResponse>
         */
        typedef Ros1Rosdemo_v4GetOutputBoolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetOutputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetOutputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetOutputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetOutputBool.
     * @details Binds every operation to Ros1Rosdemo_v4GetOutputBoolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetOutputBoolBinding> Ros1Rosdemo_v4GetOutputBoolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetOutputBool.
     * @details Binds every operation to Ros1Rosdemo_v4GetOutputBoolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetOutputBoolBinding> Ros1Rosdemo_v4GetOutputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetOutputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_call
     */
    struct Ros1Rosdemo_v4GetOutputFloatBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetOutputFloatRequest>
         */
        typedef Ros1Rosdemo_v4GetOutputFloatRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetOutputFloatResponse>
         */
        typedef Ros1Rosdemo_v4GetOutputFloatResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetOutputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetOutputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetOutputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetOutputFloat.
     * @details Binds every operation to Ros1Rosdemo_v4GetOutputFloatBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetOutputFloatBinding> Ros1Rosdemo_v4GetOutputFloatClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetOutputFloat.
     * @details Binds every operation to Ros1Rosdemo_v4GetOutputFloatBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetOutputFloatBinding> Ros1Rosdemo_v4GetOutputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETOUTPUTINT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetOutputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetOutputInt_call
     */
    struct Ros1Rosdemo_v4GetOutputIntBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetOutputIntRequest>
         */
        typedef Ros1Rosdemo_v4GetOutputIntRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetOutputIntResponse>
         */
        typedef Ros1Rosdemo_v4GetOutputIntResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetOutputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetOutputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetOutputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetOutputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetOutputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetOutputInt.
     * @details Binds every operation to Ros1Rosdemo_v4GetOutputIntBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetOutputIntBinding> Ros1Rosdemo_v4GetOutputIntClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetOutputInt.
     * @details Binds every operation to Ros1Rosdemo_v4GetOutputIntBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetOutputIntBinding> Ros1Rosdemo_v4GetOutputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetPose_call
     */
    struct Ros1Rosdemo_v4GetPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetPoseRequest>
         */
        typedef Ros1Rosdemo_v4GetPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetPoseResponse>
         */
        typedef Ros1Rosdemo_v4GetPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetPose.
     * @details Binds every operation to Ros1Rosdemo_v4GetPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetPoseBinding> Ros1Rosdemo_v4GetPoseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetPose.
     * @details Binds every operation to Ros1Rosdemo_v4GetPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetPoseBinding> Ros1Rosdemo_v4GetPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_GETSTARTPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4GetStartPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_GetStartPose_call
     */
    struct Ros1Rosdemo_v4GetStartPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4GetStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetStartPoseRequest>
         */
        typedef Ros1Rosdemo_v4GetStartPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4GetStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4GetStartPoseResponse>
         */
        typedef Ros1Rosdemo_v4GetStartPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4GetStartPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_GetStartPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetStartPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4GetStartPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_GetStartPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetStartPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4GetStartPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_GetStartPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_GetStartPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4GetStartPose.
     * @details Binds every operation to Ros1Rosdemo_v4GetStartPoseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4GetStartPoseBinding> Ros1Rosdemo_v4GetStartPoseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4GetStartPose.
     * @details Binds every operation to Ros1Rosdemo_v4GetStartPoseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4GetStartPoseBinding> Ros1Rosdemo_v4GetStartPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSEKIN 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4InverseKin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_InverseKin_call
     */
    struct Ros1Rosdemo_v4InverseKinBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4InverseKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4InverseKinRequest>
         */
        typedef Ros1Rosdemo_v4InverseKinRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4InverseKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4InverseKinResponse>
         */
        typedef Ros1Rosdemo_v4InverseKinResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4InverseKin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_InverseKin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_InverseKin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4InverseKin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_InverseKin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_InverseKin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4InverseKin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_InverseKin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_InverseKin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4InverseKin.
     * @details Binds every operation to Ros1Rosdemo_v4InverseKinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4InverseKinBinding> Ros1Rosdemo_v4InverseKinClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4InverseKin.
     * @details Binds every operation to Ros1Rosdemo_v4InverseKinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4InverseKinBinding> Ros1Rosdemo_v4InverseKinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_INVERSESOLUTION 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4InverseSolution.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_InverseSolution_call
     */
    struct Ros1Rosdemo_v4InverseSolutionBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4InverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4InverseSolutionRequest>
         */
        typedef Ros1Rosdemo_v4InverseSolutionRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4InverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4InverseSolutionResponse>
         */
        typedef Ros1Rosdemo_v4InverseSolutionResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4InverseSolution request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_InverseSolution_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_InverseSolution_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4InverseSolution request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_InverseSolution_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_InverseSolution_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4InverseSolution ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_InverseSolution_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_InverseSolution_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4InverseSolution.
     * @details Binds every operation to Ros1Rosdemo_v4InverseSolutionBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4InverseSolutionBinding> Ros1Rosdemo_v4InverseSolutionClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4InverseSolution.
     * @details Binds every operation to Ros1Rosdemo_v4InverseSolutionBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4InverseSolutionBinding> Ros1Rosdemo_v4InverseSolutionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCLOSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ModbusClose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ModbusClose_call
     */
    struct Ros1Rosdemo_v4ModbusCloseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ModbusCloseRequest>
         */
        typedef Ros1Rosdemo_v4ModbusCloseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ModbusCloseResponse>
         */
        typedef Ros1Rosdemo_v4ModbusCloseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ModbusClose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusClose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusClose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ModbusClose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusClose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusClose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ModbusClose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusClose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusClose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ModbusClose.
     * @details Binds every operation to Ros1Rosdemo_v4ModbusCloseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ModbusCloseBinding> Ros1Rosdemo_v4ModbusCloseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ModbusClose.
     * @details Binds every operation to Ros1Rosdemo_v4ModbusCloseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ModbusCloseBinding> Ros1Rosdemo_v4ModbusCloseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSCREATE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ModbusCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ModbusCreate_call
     */
    struct Ros1Rosdemo_v4ModbusCreateBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ModbusCreateRequest>
         */
        typedef Ros1Rosdemo_v4ModbusCreateRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ModbusCreateResponse>
         */
        typedef Ros1Rosdemo_v4ModbusCreateResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ModbusCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ModbusCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ModbusCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ModbusCreate.
     * @details Binds every operation to Ros1Rosdemo_v4ModbusCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ModbusCreateBinding> Ros1Rosdemo_v4ModbusCreateClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ModbusCreate.
     * @details Binds every operation to Ros1Rosdemo_v4ModbusCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ModbusCreateBinding> Ros1Rosdemo_v4ModbusCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MODBUSRTUCREATE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ModbusRTUCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_call
     */
    struct Ros1Rosdemo_v4ModbusRTUCreateBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ModbusRTUCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ModbusRTUCreateRequest>
         */
        typedef Ros1Rosdemo_v4ModbusRTUCreateRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ModbusRTUCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ModbusRTUCreateResponse>
         */
        typedef Ros1Rosdemo_v4ModbusRTUCreateResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ModbusRTUCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ModbusRTUCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ModbusRTUCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ModbusRTUCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ModbusRTUCreate.
     * @details Binds every operation to Ros1Rosdemo_v4ModbusRTUCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ModbusRTUCreateBinding> Ros1Rosdemo_v4ModbusRTUCreateClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ModbusRTUCreate.
     * @details Binds every operation to Ros1Rosdemo_v4ModbusRTUCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ModbusRTUCreateBinding> Ros1Rosdemo_v4ModbusRTUCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4MovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_MovJ_call
     */
    struct Ros1Rosdemo_v4MovJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4MovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovJRequest>
         */
        typedef Ros1Rosdemo_v4MovJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4MovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovJResponse>
         */
        typedef Ros1Rosdemo_v4MovJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4MovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_MovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4MovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_MovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4MovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_MovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4MovJ.
     * @details Binds every operation to Ros1Rosdemo_v4MovJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4MovJBinding> Ros1Rosdemo_v4MovJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4MovJ.
     * @details Binds every operation to Ros1Rosdemo_v4MovJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4MovJBinding> Ros1Rosdemo_v4MovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVJIO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4MovJIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_MovJIO_call
     */
    struct Ros1Rosdemo_v4MovJIOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4MovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovJIORequest>
         */
        typedef Ros1Rosdemo_v4MovJIORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4MovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovJIOResponse>
         */
        typedef Ros1Rosdemo_v4MovJIOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4MovJIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_MovJIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovJIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4MovJIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_MovJIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovJIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4MovJIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_MovJIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovJIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4MovJIO.
     * @details Binds every operation to Ros1Rosdemo_v4MovJIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4MovJIOBinding> Ros1Rosdemo_v4MovJIOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4MovJIO.
     * @details Binds every operation to Ros1Rosdemo_v4MovJIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4MovJIOBinding> Ros1Rosdemo_v4MovJIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4MovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_MovL_call
     */
    struct Ros1Rosdemo_v4MovLBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4MovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovLRequest>
         */
        typedef Ros1Rosdemo_v4MovLRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4MovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovLResponse>
         */
        typedef Ros1Rosdemo_v4MovLResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4MovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_MovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4MovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_MovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4MovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_MovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4MovL.
     * @details Binds every operation to Ros1Rosdemo_v4MovLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4MovLBinding> Ros1Rosdemo_v4MovLClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4MovL.
     * @details Binds every operation to Ros1Rosdemo_v4MovLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4MovLBinding> Ros1Rosdemo_v4MovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVLIO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4MovLIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_MovLIO_call
     */
    struct Ros1Rosdemo_v4MovLIOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4MovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovLIORequest>
         */
        typedef Ros1Rosdemo_v4MovLIORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4MovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MovLIOResponse>
         */
        typedef Ros1Rosdemo_v4MovLIOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4MovLIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_MovLIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovLIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4MovLIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_MovLIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovLIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4MovLIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_MovLIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MovLIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4MovLIO.
     * @details Binds every operation to Ros1Rosdemo_v4MovLIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4MovLIOBinding> Ros1Rosdemo_v4MovLIOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4MovLIO.
     * @details Binds every operation to Ros1Rosdemo_v4MovLIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4MovLIOBinding> Ros1Rosdemo_v4MovLIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_MOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4MoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_MoveJog_call
     */
    struct Ros1Rosdemo_v4MoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4MoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MoveJogRequest>
         */
        typedef Ros1Rosdemo_v4MoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4MoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4MoveJogResponse>
         */
        typedef Ros1Rosdemo_v4MoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4MoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_MoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4MoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_MoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_MoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4MoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_MoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_MoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4MoveJog.
     * @details Binds every operation to Ros1Rosdemo_v4MoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4MoveJogBinding> Ros1Rosdemo_v4MoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4MoveJog.
     * @details Binds every operation to Ros1Rosdemo_v4MoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4MoveJogBinding> Ros1Rosdemo_v4MoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_PAUSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4Pause.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_Pause_call
     */
    struct Ros1Rosdemo_v4PauseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4Pause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4PauseRequest>
         */
        typedef Ros1Rosdemo_v4PauseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4Pause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4PauseResponse>
         */
        typedef Ros1Rosdemo_v4PauseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4Pause request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_Pause_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Pause_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4Pause request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_Pause_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_Pause_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4Pause ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_Pause_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Pause_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4Pause.
     * @details Binds every operation to Ros1Rosdemo_v4PauseBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4PauseBinding> Ros1Rosdemo_v4PauseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4Pause.
     * @details Binds every operation to Ros1Rosdemo_v4PauseBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4PauseBinding> Ros1Rosdemo_v4PauseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POSITIVEKIN 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4PositiveKin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_PositiveKin_call
     */
    struct Ros1Rosdemo_v4PositiveKinBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4PositiveKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4PositiveKinRequest>
         */
        typedef Ros1Rosdemo_v4PositiveKinRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4PositiveKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4PositiveKinResponse>
         */
        typedef Ros1Rosdemo_v4PositiveKinResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4PositiveKin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_PositiveKin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_PositiveKin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4PositiveKin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_PositiveKin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_PositiveKin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4PositiveKin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_PositiveKin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_PositiveKin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4PositiveKin.
     * @details Binds every operation to Ros1Rosdemo_v4PositiveKinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4PositiveKinBinding> Ros1Rosdemo_v4PositiveKinClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4PositiveKin.
     * @details Binds every operation to Ros1Rosdemo_v4PositiveKinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4PositiveKinBinding> Ros1Rosdemo_v4PositiveKinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_POWERON 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4PowerOn.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_PowerOn_call
     */
    struct Ros1Rosdemo_v4PowerOnBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4PowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4PowerOnRequest>
         */
        typedef Ros1Rosdemo_v4PowerOnRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4PowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4PowerOnResponse>
         */
        typedef Ros1Rosdemo_v4PowerOnResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4PowerOn request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_PowerOn_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_PowerOn_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4PowerOn request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_PowerOn_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_PowerOn_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4PowerOn ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_PowerOn_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_PowerOn_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4PowerOn.
     * @details Binds every operation to Ros1Rosdemo_v4PowerOnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4PowerOnBinding> Ros1Rosdemo_v4PowerOnClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4PowerOn.
     * @details Binds every operation to Ros1Rosdemo_v4PowerOnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4PowerOnBinding> Ros1Rosdemo_v4PowerOnServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELJOINTMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4RelJointMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_call
     */
    struct Ros1Rosdemo_v4RelJointMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4RelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelJointMovJRequest>
         */
        typedef Ros1Rosdemo_v4RelJointMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4RelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelJointMovJResponse>
         */
        typedef Ros1Rosdemo_v4RelJointMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4RelJointMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4RelJointMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4RelJointMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelJointMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4RelJointMovJ.
     * @details Binds every operation to Ros1Rosdemo_v4RelJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4RelJointMovJBinding> Ros1Rosdemo_v4RelJointMovJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4RelJointMovJ.
     * @details Binds every operation to Ros1Rosdemo_v4RelJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4RelJointMovJBinding> Ros1Rosdemo_v4RelJointMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4RelMovJTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_RelMovJTool_call
     */
    struct Ros1Rosdemo_v4RelMovJToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4RelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovJToolRequest>
         */
        typedef Ros1Rosdemo_v4RelMovJToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4RelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovJToolResponse>
         */
        typedef Ros1Rosdemo_v4RelMovJToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4RelMovJTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovJTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovJTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4RelMovJTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovJTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovJTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4RelMovJTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovJTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovJTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4RelMovJTool.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovJToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4RelMovJToolBinding> Ros1Rosdemo_v4RelMovJToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4RelMovJTool.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovJToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4RelMovJToolBinding> Ros1Rosdemo_v4RelMovJToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVJUSER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4RelMovJUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_RelMovJUser_call
     */
    struct Ros1Rosdemo_v4RelMovJUserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4RelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovJUserRequest>
         */
        typedef Ros1Rosdemo_v4RelMovJUserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4RelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovJUserResponse>
         */
        typedef Ros1Rosdemo_v4RelMovJUserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4RelMovJUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovJUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovJUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4RelMovJUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovJUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovJUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4RelMovJUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovJUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovJUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4RelMovJUser.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovJUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4RelMovJUserBinding> Ros1Rosdemo_v4RelMovJUserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4RelMovJUser.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovJUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4RelMovJUserBinding> Ros1Rosdemo_v4RelMovJUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4RelMovLTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_RelMovLTool_call
     */
    struct Ros1Rosdemo_v4RelMovLToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4RelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovLToolRequest>
         */
        typedef Ros1Rosdemo_v4RelMovLToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4RelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovLToolResponse>
         */
        typedef Ros1Rosdemo_v4RelMovLToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4RelMovLTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovLTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovLTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4RelMovLTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovLTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovLTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4RelMovLTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovLTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovLTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4RelMovLTool.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovLToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4RelMovLToolBinding> Ros1Rosdemo_v4RelMovLToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4RelMovLTool.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovLToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4RelMovLToolBinding> Ros1Rosdemo_v4RelMovLToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RELMOVLUSER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4RelMovLUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_RelMovLUser_call
     */
    struct Ros1Rosdemo_v4RelMovLUserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4RelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovLUserRequest>
         */
        typedef Ros1Rosdemo_v4RelMovLUserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4RelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RelMovLUserResponse>
         */
        typedef Ros1Rosdemo_v4RelMovLUserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4RelMovLUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovLUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovLUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4RelMovLUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovLUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovLUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4RelMovLUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_RelMovLUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RelMovLUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4RelMovLUser.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovLUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4RelMovLUserBinding> Ros1Rosdemo_v4RelMovLUserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4RelMovLUser.
     * @details Binds every operation to Ros1Rosdemo_v4RelMovLUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4RelMovLUserBinding> Ros1Rosdemo_v4RelMovLUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_ROBOTMODE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4RobotMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_RobotMode_call
     */
    struct Ros1Rosdemo_v4RobotModeBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4RobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RobotModeRequest>
         */
        typedef Ros1Rosdemo_v4RobotModeRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4RobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RobotModeResponse>
         */
        typedef Ros1Rosdemo_v4RobotModeResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4RobotMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_RobotMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RobotMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4RobotMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_RobotMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_RobotMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4RobotMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_RobotMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RobotMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4RobotMode.
     * @details Binds every operation to Ros1Rosdemo_v4RobotModeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4RobotModeBinding> Ros1Rosdemo_v4RobotModeClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4RobotMode.
     * @details Binds every operation to Ros1Rosdemo_v4RobotModeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4RobotModeBinding> Ros1Rosdemo_v4RobotModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_RUNSCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4RunScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_RunScript_call
     */
    struct Ros1Rosdemo_v4RunScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4RunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RunScriptRequest>
         */
        typedef Ros1Rosdemo_v4RunScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4RunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4RunScriptResponse>
         */
        typedef Ros1Rosdemo_v4RunScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4RunScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_RunScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RunScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4RunScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_RunScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_RunScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4RunScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_RunScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_RunScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4RunScript.
     * @details Binds every operation to Ros1Rosdemo_v4RunScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4RunScriptBinding> Ros1Rosdemo_v4RunScriptClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4RunScript.
     * @details Binds every operation to Ros1Rosdemo_v4RunScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4RunScriptBinding> Ros1Rosdemo_v4RunScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ServoJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ServoJ_call
     */
    struct Ros1Rosdemo_v4ServoJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ServoJRequest>
         */
        typedef Ros1Rosdemo_v4ServoJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ServoJResponse>
         */
        typedef Ros1Rosdemo_v4ServoJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ServoJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ServoJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ServoJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ServoJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ServoJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ServoJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ServoJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ServoJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ServoJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ServoJ.
     * @details Binds every operation to Ros1Rosdemo_v4ServoJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ServoJBinding> Ros1Rosdemo_v4ServoJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ServoJ.
     * @details Binds every operation to Ros1Rosdemo_v4ServoJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ServoJBinding> Ros1Rosdemo_v4ServoJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SERVOP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ServoP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ServoP_call
     */
    struct Ros1Rosdemo_v4ServoPBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ServoPRequest>
         */
        typedef Ros1Rosdemo_v4ServoPRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ServoPResponse>
         */
        typedef Ros1Rosdemo_v4ServoPResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ServoP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ServoP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ServoP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ServoP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ServoP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ServoP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ServoP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ServoP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ServoP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ServoP.
     * @details Binds every operation to Ros1Rosdemo_v4ServoPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ServoPBinding> Ros1Rosdemo_v4ServoPClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ServoP.
     * @details Binds every operation to Ros1Rosdemo_v4ServoPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ServoPBinding> Ros1Rosdemo_v4ServoPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETBACKDISTANCE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetBackDistance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetBackDistance_call
     */
    struct Ros1Rosdemo_v4SetBackDistanceBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetBackDistance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetBackDistanceRequest>
         */
        typedef Ros1Rosdemo_v4SetBackDistanceRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetBackDistance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetBackDistanceResponse>
         */
        typedef Ros1Rosdemo_v4SetBackDistanceResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetBackDistance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetBackDistance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetBackDistance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetBackDistance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetBackDistance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetBackDistance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetBackDistance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetBackDistance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetBackDistance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetBackDistance.
     * @details Binds every operation to Ros1Rosdemo_v4SetBackDistanceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetBackDistanceBinding> Ros1Rosdemo_v4SetBackDistanceClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetBackDistance.
     * @details Binds every operation to Ros1Rosdemo_v4SetBackDistanceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetBackDistanceBinding> Ros1Rosdemo_v4SetBackDistanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetCoils_call
     */
    struct Ros1Rosdemo_v4SetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetCoilsRequest>
         */
        typedef Ros1Rosdemo_v4SetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetCoilsResponse>
         */
        typedef Ros1Rosdemo_v4SetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetCoils.
     * @details Binds every operation to Ros1Rosdemo_v4SetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetCoilsBinding> Ros1Rosdemo_v4SetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetCoils.
     * @details Binds every operation to Ros1Rosdemo_v4SetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetCoilsBinding> Ros1Rosdemo_v4SetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETCOLLISIONLEVEL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetCollisionLevel.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_call
     */
    struct Ros1Rosdemo_v4SetCollisionLevelBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetCollisionLevelRequest>
         */
        typedef Ros1Rosdemo_v4SetCollisionLevelRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetCollisionLevelResponse>
         */
        typedef Ros1Rosdemo_v4SetCollisionLevelResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetCollisionLevel request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetCollisionLevel request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetCollisionLevel ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetCollisionLevel_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetCollisionLevel.
     * @details Binds every operation to Ros1Rosdemo_v4SetCollisionLevelBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetCollisionLevelBinding> Ros1Rosdemo_v4SetCollisionLevelClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetCollisionLevel.
     * @details Binds every operation to Ros1Rosdemo_v4SetCollisionLevelBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetCollisionLevelBinding> Ros1Rosdemo_v4SetCollisionLevelServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_call
     */
    struct Ros1Rosdemo_v4SetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetHoldRegsRequest>
         */
        typedef Ros1Rosdemo_v4SetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetHoldRegsResponse>
         */
        typedef Ros1Rosdemo_v4SetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v4SetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetHoldRegsBinding> Ros1Rosdemo_v4SetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v4SetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetHoldRegsBinding> Ros1Rosdemo_v4SetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetOutputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetOutputBool_call
     */
    struct Ros1Rosdemo_v4SetOutputBoolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetOutputBoolRequest>
         */
        typedef Ros1Rosdemo_v4SetOutputBoolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetOutputBoolResponse>
         */
        typedef Ros1Rosdemo_v4SetOutputBoolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetOutputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetOutputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetOutputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetOutputBool.
     * @details Binds every operation to Ros1Rosdemo_v4SetOutputBoolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetOutputBoolBinding> Ros1Rosdemo_v4SetOutputBoolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetOutputBool.
     * @details Binds every operation to Ros1Rosdemo_v4SetOutputBoolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetOutputBoolBinding> Ros1Rosdemo_v4SetOutputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetOutputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_call
     */
    struct Ros1Rosdemo_v4SetOutputFloatBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetOutputFloatRequest>
         */
        typedef Ros1Rosdemo_v4SetOutputFloatRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetOutputFloatResponse>
         */
        typedef Ros1Rosdemo_v4SetOutputFloatResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetOutputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetOutputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetOutputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetOutputFloat.
     * @details Binds every operation to Ros1Rosdemo_v4SetOutputFloatBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetOutputFloatBinding> Ros1Rosdemo_v4SetOutputFloatClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetOutputFloat.
     * @details Binds every operation to Ros1Rosdemo_v4SetOutputFloatBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetOutputFloatBinding> Ros1Rosdemo_v4SetOutputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETOUTPUTINT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetOutputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetOutputInt_call
     */
    struct Ros1Rosdemo_v4SetOutputIntBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetOutputIntRequest>
         */
        typedef Ros1Rosdemo_v4SetOutputIntRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetOutputIntResponse>
         */
        typedef Ros1Rosdemo_v4SetOutputIntResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetOutputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetOutputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetOutputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetOutputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetOutputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetOutputInt.
     * @details Binds every operation to Ros1Rosdemo_v4SetOutputIntBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetOutputIntBinding> Ros1Rosdemo_v4SetOutputIntClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetOutputInt.
     * @details Binds every operation to Ros1Rosdemo_v4SetOutputIntBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetOutputIntBinding> Ros1Rosdemo_v4SetOutputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPAYLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetPayload.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetPayload_call
     */
    struct Ros1Rosdemo_v4SetPayloadBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetPayloadRequest>
         */
        typedef Ros1Rosdemo_v4SetPayloadRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetPayloadResponse>
         */
        typedef Ros1Rosdemo_v4SetPayloadResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetPayload request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetPayload_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetPayload_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetPayload request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetPayload_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetPayload_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetPayload ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetPayload_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetPayload_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetPayload.
     * @details Binds every operation to Ros1Rosdemo_v4SetPayloadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetPayloadBinding> Ros1Rosdemo_v4SetPayloadClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetPayload.
     * @details Binds every operation to Ros1Rosdemo_v4SetPayloadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetPayloadBinding> Ros1Rosdemo_v4SetPayloadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETPOSTCOLLISIONMODE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetPostCollisionMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_call
     */
    struct Ros1Rosdemo_v4SetPostCollisionModeBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetPostCollisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetPostCollisionModeRequest>
         */
        typedef Ros1Rosdemo_v4SetPostCollisionModeRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetPostCollisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetPostCollisionModeResponse>
         */
        typedef Ros1Rosdemo_v4SetPostCollisionModeResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetPostCollisionMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetPostCollisionMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetPostCollisionMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetPostCollisionMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetPostCollisionMode.
     * @details Binds every operation to Ros1Rosdemo_v4SetPostCollisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetPostCollisionModeBinding> Ros1Rosdemo_v4SetPostCollisionModeClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetPostCollisionMode.
     * @details Binds every operation to Ros1Rosdemo_v4SetPostCollisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetPostCollisionModeBinding> Ros1Rosdemo_v4SetPostCollisionModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_call
     */
    struct Ros1Rosdemo_v4SetSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetSafeSkinRequest>
         */
        typedef Ros1Rosdemo_v4SetSafeSkinRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetSafeSkinResponse>
         */
        typedef Ros1Rosdemo_v4SetSafeSkinResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetSafeSkin.
     * @details Binds every operation to Ros1Rosdemo_v4SetSafeSkinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetSafeSkinBinding> Ros1Rosdemo_v4SetSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetSafeSkin.
     * @details Binds every operation to Ros1Rosdemo_v4SetSafeSkinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetSafeSkinBinding> Ros1Rosdemo_v4SetSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETSAFEWALLENABLE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetSafeWallEnable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_call
     */
    struct Ros1Rosdemo_v4SetSafeWallEnableBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetSafeWallEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetSafeWallEnableRequest>
         */
        typedef Ros1Rosdemo_v4SetSafeWallEnableRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetSafeWallEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetSafeWallEnableResponse>
         */
        typedef Ros1Rosdemo_v4SetSafeWallEnableResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetSafeWallEnable request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetSafeWallEnable request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetSafeWallEnable ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetSafeWallEnable_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetSafeWallEnable.
     * @details Binds every operation to Ros1Rosdemo_v4SetSafeWallEnableBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetSafeWallEnableBinding> Ros1Rosdemo_v4SetSafeWallEnableClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetSafeWallEnable.
     * @details Binds every operation to Ros1Rosdemo_v4SetSafeWallEnableBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetSafeWallEnableBinding> Ros1Rosdemo_v4SetSafeWallEnableServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetTool_call
     */
    struct Ros1Rosdemo_v4SetToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetToolRequest>
         */
        typedef Ros1Rosdemo_v4SetToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetToolResponse>
         */
        typedef Ros1Rosdemo_v4SetToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetTool.
     * @details Binds every operation to Ros1Rosdemo_v4SetToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetToolBinding> Ros1Rosdemo_v4SetToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetTool.
     * @details Binds every operation to Ros1Rosdemo_v4SetToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetToolBinding> Ros1Rosdemo_v4SetToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOL485 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetTool485.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetTool485_call
     */
    struct Ros1Rosdemo_v4SetTool485Binding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetTool485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetTool485Request>
         */
        typedef Ros1Rosdemo_v4SetTool485Request Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetTool485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetTool485Response>
         */
        typedef Ros1Rosdemo_v4SetTool485Response Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetTool485 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetTool485_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetTool485_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetTool485 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetTool485_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetTool485_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetTool485 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetTool485_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetTool485_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetTool485.
     * @details Binds every operation to Ros1Rosdemo_v4SetTool485Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetTool485Binding> Ros1Rosdemo_v4SetTool485Client;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetTool485.
     * @details Binds every operation to Ros1Rosdemo_v4SetTool485Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetTool485Binding> Ros1Rosdemo_v4SetTool485Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLMODE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetToolMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetToolMode_call
     */
    struct Ros1Rosdemo_v4SetToolModeBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetToolMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetToolModeRequest>
         */
        typedef Ros1Rosdemo_v4SetToolModeRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetToolMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetToolModeResponse>
         */
        typedef Ros1Rosdemo_v4SetToolModeResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetToolMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetToolMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetToolMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetToolMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetToolMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetToolMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetToolMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetToolMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetToolMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetToolMode.
     * @details Binds every operation to Ros1Rosdemo_v4SetToolModeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetToolModeBinding> Ros1Rosdemo_v4SetToolModeClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetToolMode.
     * @details Binds every operation to Ros1Rosdemo_v4SetToolModeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetToolModeBinding> Ros1Rosdemo_v4SetToolModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETTOOLPOWER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetToolPower.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetToolPower_call
     */
    struct Ros1Rosdemo_v4SetToolPowerBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetToolPower.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetToolPowerRequest>
         */
        typedef Ros1Rosdemo_v4SetToolPowerRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetToolPower.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetToolPowerResponse>
         */
        typedef Ros1Rosdemo_v4SetToolPowerResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetToolPower request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetToolPower_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetToolPower_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetToolPower request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetToolPower_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetToolPower_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetToolPower ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetToolPower_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetToolPower_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetToolPower.
     * @details Binds every operation to Ros1Rosdemo_v4SetToolPowerBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetToolPowerBinding> Ros1Rosdemo_v4SetToolPowerClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetToolPower.
     * @details Binds every operation to Ros1Rosdemo_v4SetToolPowerBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetToolPowerBinding> Ros1Rosdemo_v4SetToolPowerServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SETUSER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SetUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SetUser_call
     */
    struct Ros1Rosdemo_v4SetUserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SetUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetUserRequest>
         */
        typedef Ros1Rosdemo_v4SetUserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SetUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SetUserResponse>
         */
        typedef Ros1Rosdemo_v4SetUserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SetUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SetUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SetUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SetUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SetUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SetUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SetUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SetUser.
     * @details Binds every operation to Ros1Rosdemo_v4SetUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SetUserBinding> Ros1Rosdemo_v4SetUserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SetUser.
     * @details Binds every operation to Ros1Rosdemo_v4SetUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SetUserBinding> Ros1Rosdemo_v4SetUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_SPEEDFACTOR 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4SpeedFactor.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_SpeedFactor_call
     */
    struct Ros1Rosdemo_v4SpeedFactorBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4SpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SpeedFactorRequest>
         */
        typedef Ros1Rosdemo_v4SpeedFactorRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4SpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4SpeedFactorResponse>
         */
        typedef Ros1Rosdemo_v4SpeedFactorResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4SpeedFactor request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_SpeedFactor_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SpeedFactor_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4SpeedFactor request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_SpeedFactor_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_SpeedFactor_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4SpeedFactor ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_SpeedFactor_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_SpeedFactor_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4SpeedFactor.
     * @details Binds every operation to Ros1Rosdemo_v4SpeedFactorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4SpeedFactorBinding> Ros1Rosdemo_v4SpeedFactorClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4SpeedFactor.
     * @details Binds every operation to Ros1Rosdemo_v4SpeedFactorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4SpeedFactorBinding> Ros1Rosdemo_v4SpeedFactorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4StartDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_StartDrag_call
     */
    struct Ros1Rosdemo_v4StartDragBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4StartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StartDragRequest>
         */
        typedef Ros1Rosdemo_v4StartDragRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4StartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StartDragResponse>
         */
        typedef Ros1Rosdemo_v4StartDragResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4StartDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_StartDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StartDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4StartDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_StartDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_StartDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4StartDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_StartDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StartDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4StartDrag.
     * @details Binds every operation to Ros1Rosdemo_v4StartDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4StartDragBinding> Ros1Rosdemo_v4StartDragClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4StartDrag.
     * @details Binds every operation to Ros1Rosdemo_v4StartDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4StartDragBinding> Ros1Rosdemo_v4StartDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STARTPATH 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4StartPath.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_StartPath_call
     */
    struct Ros1Rosdemo_v4StartPathBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4StartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StartPathRequest>
         */
        typedef Ros1Rosdemo_v4StartPathRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4StartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StartPathResponse>
         */
        typedef Ros1Rosdemo_v4StartPathResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4StartPath request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_StartPath_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StartPath_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4StartPath request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_StartPath_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_StartPath_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4StartPath ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_StartPath_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StartPath_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4StartPath.
     * @details Binds every operation to Ros1Rosdemo_v4StartPathBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4StartPathBinding> Ros1Rosdemo_v4StartPathClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4StartPath.
     * @details Binds every operation to Ros1Rosdemo_v4StartPathBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4StartPathBinding> Ros1Rosdemo_v4StartPathServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4Stop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_Stop_call
     */
    struct Ros1Rosdemo_v4StopBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4Stop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StopRequest>
         */
        typedef Ros1Rosdemo_v4StopRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4Stop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StopResponse>
         */
        typedef Ros1Rosdemo_v4StopResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4Stop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_Stop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Stop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4Stop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_Stop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_Stop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4Stop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_Stop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Stop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4Stop.
     * @details Binds every operation to Ros1Rosdemo_v4StopBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4StopBinding> Ros1Rosdemo_v4StopClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4Stop.
     * @details Binds every operation to Ros1Rosdemo_v4StopBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4StopBinding> Ros1Rosdemo_v4StopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4StopDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_StopDrag_call
     */
    struct Ros1Rosdemo_v4StopDragBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4StopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StopDragRequest>
         */
        typedef Ros1Rosdemo_v4StopDragRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4StopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StopDragResponse>
         */
        typedef Ros1Rosdemo_v4StopDragResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4StopDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_StopDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StopDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4StopDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_StopDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_StopDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4StopDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_StopDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StopDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4StopDrag.
     * @details Binds every operation to Ros1Rosdemo_v4StopDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4StopDragBinding> Ros1Rosdemo_v4StopDragClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4StopDrag.
     * @details Binds every operation to Ros1Rosdemo_v4StopDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4StopDragBinding> Ros1Rosdemo_v4StopDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_STOPMOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4StopMoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_StopMoveJog_call
     */
    struct Ros1Rosdemo_v4StopMoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4StopMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StopMoveJogRequest>
         */
        typedef Ros1Rosdemo_v4StopMoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4StopMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4StopMoveJogResponse>
         */
        typedef Ros1Rosdemo_v4StopMoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4StopMoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_StopMoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StopMoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4StopMoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_StopMoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_StopMoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4StopMoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_StopMoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_StopMoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4StopMoveJog.
     * @details Binds every operation to Ros1Rosdemo_v4StopMoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4StopMoveJogBinding> Ros1Rosdemo_v4StopMoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4StopMoveJog.
     * @details Binds every operation to Ros1Rosdemo_v4StopMoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4StopMoveJogBinding> Ros1Rosdemo_v4StopMoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TCPDASHBOARD 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4TcpDashboard.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_TcpDashboard_call
     */
    struct Ros1Rosdemo_v4TcpDashboardBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4TcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4TcpDashboardRequest>
         */
        typedef Ros1Rosdemo_v4TcpDashboardRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4TcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4TcpDashboardResponse>
         */
        typedef Ros1Rosdemo_v4TcpDashboardResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4TcpDashboard request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_TcpDashboard_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_TcpDashboard_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4TcpDashboard request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_TcpDashboard_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_TcpDashboard_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4TcpDashboard ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_TcpDashboard_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_TcpDashboard_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4TcpDashboard.
     * @details Binds every operation to Ros1Rosdemo_v4TcpDashboardBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4TcpDashboardBinding> Ros1Rosdemo_v4TcpDashboardClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4TcpDashboard.
     * @details Binds every operation to Ros1Rosdemo_v4TcpDashboardBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4TcpDashboardBinding> Ros1Rosdemo_v4TcpDashboardServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4Tool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_Tool_call
     */
    struct Ros1Rosdemo_v4ToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4Tool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolRequest>
         */
        typedef Ros1Rosdemo_v4ToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4Tool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolResponse>
         */
        typedef Ros1Rosdemo_v4ToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4Tool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_Tool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Tool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4Tool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_Tool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_Tool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4Tool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_Tool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_Tool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4Tool.
     * @details Binds every operation to Ros1Rosdemo_v4ToolBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ToolBinding> Ros1Rosdemo_v4ToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4Tool.
     * @details Binds every operation to Ros1Rosdemo_v4ToolBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ToolBinding> Ros1Rosdemo_v4ToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLAI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ToolAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ToolAI_call
     */
    struct Ros1Rosdemo_v4ToolAIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolAIRequest>
         */
        typedef Ros1Rosdemo_v4ToolAIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolAIResponse>
         */
        typedef Ros1Rosdemo_v4ToolAIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ToolAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolAI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolAI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ToolAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolAI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolAI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ToolAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolAI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolAI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ToolAI.
     * @details Binds every operation to Ros1Rosdemo_v4ToolAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ToolAIBinding> Ros1Rosdemo_v4ToolAIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ToolAI.
     * @details Binds every operation to Ros1Rosdemo_v4ToolAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ToolAIBinding> Ros1Rosdemo_v4ToolAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ToolDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ToolDI_call
     */
    struct Ros1Rosdemo_v4ToolDIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolDIRequest>
         */
        typedef Ros1Rosdemo_v4ToolDIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolDIResponse>
         */
        typedef Ros1Rosdemo_v4ToolDIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ToolDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ToolDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ToolDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ToolDI.
     * @details Binds every operation to Ros1Rosdemo_v4ToolDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ToolDIBinding> Ros1Rosdemo_v4ToolDIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ToolDI.
     * @details Binds every operation to Ros1Rosdemo_v4ToolDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ToolDIBinding> Ros1Rosdemo_v4ToolDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ToolDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ToolDO_call
     */
    struct Ros1Rosdemo_v4ToolDOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolDORequest>
         */
        typedef Ros1Rosdemo_v4ToolDORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolDOResponse>
         */
        typedef Ros1Rosdemo_v4ToolDOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ToolDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ToolDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ToolDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ToolDO.
     * @details Binds every operation to Ros1Rosdemo_v4ToolDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ToolDOBinding> Ros1Rosdemo_v4ToolDOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ToolDO.
     * @details Binds every operation to Ros1Rosdemo_v4ToolDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ToolDOBinding> Ros1Rosdemo_v4ToolDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_TOOLDOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4ToolDOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_call
     */
    struct Ros1Rosdemo_v4ToolDOInstantBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4ToolDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolDOInstantRequest>
         */
        typedef Ros1Rosdemo_v4ToolDOInstantRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4ToolDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4ToolDOInstantResponse>
         */
        typedef Ros1Rosdemo_v4ToolDOInstantResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4ToolDOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4ToolDOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4ToolDOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_ToolDOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4ToolDOInstant.
     * @details Binds every operation to Ros1Rosdemo_v4ToolDOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4ToolDOInstantBinding> Ros1Rosdemo_v4ToolDOInstantClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4ToolDOInstant.
     * @details Binds every operation to Ros1Rosdemo_v4ToolDOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4ToolDOInstantBinding> Ros1Rosdemo_v4ToolDOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_USER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4User.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_User_call
     */
    struct Ros1Rosdemo_v4UserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4User.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4UserRequest>
         */
        typedef Ros1Rosdemo_v4UserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4User.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4UserResponse>
         */
        typedef Ros1Rosdemo_v4UserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4User request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_User_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_User_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4User request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_User_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_User_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4User ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_User_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_User_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4User.
     * @details Binds every operation to Ros1Rosdemo_v4UserBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4UserBinding> Ros1Rosdemo_v4UserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4User.
     * @details Binds every operation to Ros1Rosdemo_v4UserBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4UserBinding> Ros1Rosdemo_v4UserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4VelJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_VelJ_call
     */
    struct Ros1Rosdemo_v4VelJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4VelJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4VelJRequest>
         */
        typedef Ros1Rosdemo_v4VelJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4VelJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4VelJResponse>
         */
        typedef Ros1Rosdemo_v4VelJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4VelJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_VelJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_VelJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4VelJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_VelJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_VelJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4VelJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_VelJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_VelJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4VelJ.
     * @details Binds every operation to Ros1Rosdemo_v4VelJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4VelJBinding> Ros1Rosdemo_v4VelJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4VelJ.
     * @details Binds every operation to Ros1Rosdemo_v4VelJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4VelJBinding> Ros1Rosdemo_v4VelJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V4_VELL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v4VelL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v4_VelL_call
     */
    struct Ros1Rosdemo_v4VelLBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v4VelL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4VelLRequest>
         */
        typedef Ros1Rosdemo_v4VelLRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v4VelL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v4VelLResponse>
         */
        typedef Ros1Rosdemo_v4VelLResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v4VelL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v4_VelL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_VelL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v4VelL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v4_VelL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v4_VelL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v4VelL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v4_VelL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v4_VelL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v4VelL.
     * @details Binds every operation to Ros1Rosdemo_v4VelLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v4VelLBinding> Ros1Rosdemo_v4VelLClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v4VelL.
     * @details Binds every operation to Ros1Rosdemo_v4VelLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v4VelLBinding> Ros1Rosdemo_v4VelLServer;
#endif
}  // namespace uwvm_custom
