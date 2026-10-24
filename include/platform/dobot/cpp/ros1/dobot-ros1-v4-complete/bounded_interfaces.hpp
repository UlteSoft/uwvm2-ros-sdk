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
#include <dobot/c/ros1/dobot-ros1-v4-complete/bounded_interfaces.h>
#include <dobot/cpp/ros1/dobot-ros1-v4-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_AI_call
     */
    struct Ros1Dobot_v4_bringupAIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAIRequest>
         */
        typedef Ros1Dobot_v4_bringupAIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAIResponse>
         */
        typedef Ros1Dobot_v4_bringupAIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupAI.
     * @details Binds every operation to Ros1Dobot_v4_bringupAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupAIBinding> Ros1Dobot_v4_bringupAIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupAI.
     * @details Binds every operation to Ros1Dobot_v4_bringupAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupAIBinding> Ros1Dobot_v4_bringupAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupAO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_AO_call
     */
    struct Ros1Dobot_v4_bringupAOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAORequest>
         */
        typedef Ros1Dobot_v4_bringupAORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAOResponse>
         */
        typedef Ros1Dobot_v4_bringupAOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupAO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupAO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupAO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupAO.
     * @details Binds every operation to Ros1Dobot_v4_bringupAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupAOBinding> Ros1Dobot_v4_bringupAOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupAO.
     * @details Binds every operation to Ros1Dobot_v4_bringupAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupAOBinding> Ros1Dobot_v4_bringupAOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_AOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupAOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_AOInstant_call
     */
    struct Ros1Dobot_v4_bringupAOInstantBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupAOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAOInstantRequest>
         */
        typedef Ros1Dobot_v4_bringupAOInstantRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupAOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAOInstantResponse>
         */
        typedef Ros1Dobot_v4_bringupAOInstantResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupAOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupAOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupAOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupAOInstant.
     * @details Binds every operation to Ros1Dobot_v4_bringupAOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupAOInstantBinding> Ros1Dobot_v4_bringupAOInstantClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupAOInstant.
     * @details Binds every operation to Ros1Dobot_v4_bringupAOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupAOInstantBinding> Ros1Dobot_v4_bringupAOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupAccJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_AccJ_call
     */
    struct Ros1Dobot_v4_bringupAccJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupAccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAccJRequest>
         */
        typedef Ros1Dobot_v4_bringupAccJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupAccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAccJResponse>
         */
        typedef Ros1Dobot_v4_bringupAccJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupAccJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AccJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AccJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupAccJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AccJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AccJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupAccJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AccJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AccJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupAccJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupAccJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupAccJBinding> Ros1Dobot_v4_bringupAccJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupAccJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupAccJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupAccJBinding> Ros1Dobot_v4_bringupAccJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ACCL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupAccL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_AccL_call
     */
    struct Ros1Dobot_v4_bringupAccLBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupAccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAccLRequest>
         */
        typedef Ros1Dobot_v4_bringupAccLRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupAccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupAccLResponse>
         */
        typedef Ros1Dobot_v4_bringupAccLResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupAccL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AccL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AccL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupAccL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AccL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AccL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupAccL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_AccL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_AccL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupAccL.
     * @details Binds every operation to Ros1Dobot_v4_bringupAccLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupAccLBinding> Ros1Dobot_v4_bringupAccLClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupAccL.
     * @details Binds every operation to Ros1Dobot_v4_bringupAccLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupAccLBinding> Ros1Dobot_v4_bringupAccLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ARC 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupArc.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_Arc_call
     */
    struct Ros1Dobot_v4_bringupArcBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupArc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupArcRequest>
         */
        typedef Ros1Dobot_v4_bringupArcRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupArc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupArcResponse>
         */
        typedef Ros1Dobot_v4_bringupArcResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupArc request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Arc_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Arc_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupArc request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Arc_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Arc_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupArc ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Arc_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Arc_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupArc.
     * @details Binds every operation to Ros1Dobot_v4_bringupArcBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupArcBinding> Ros1Dobot_v4_bringupArcClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupArc.
     * @details Binds every operation to Ros1Dobot_v4_bringupArcBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupArcBinding> Ros1Dobot_v4_bringupArcServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_BRAKECONTROL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupBrakeControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_call
     */
    struct Ros1Dobot_v4_bringupBrakeControlBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupBrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupBrakeControlRequest>
         */
        typedef Ros1Dobot_v4_bringupBrakeControlRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupBrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupBrakeControlResponse>
         */
        typedef Ros1Dobot_v4_bringupBrakeControlResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupBrakeControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupBrakeControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupBrakeControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_BrakeControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupBrakeControl.
     * @details Binds every operation to Ros1Dobot_v4_bringupBrakeControlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupBrakeControlBinding> Ros1Dobot_v4_bringupBrakeControlClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupBrakeControl.
     * @details Binds every operation to Ros1Dobot_v4_bringupBrakeControlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupBrakeControlBinding> Ros1Dobot_v4_bringupBrakeControlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupCP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_CP_call
     */
    struct Ros1Dobot_v4_bringupCPBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupCP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCPRequest>
         */
        typedef Ros1Dobot_v4_bringupCPRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupCP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCPResponse>
         */
        typedef Ros1Dobot_v4_bringupCPResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupCP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupCP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupCP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupCP.
     * @details Binds every operation to Ros1Dobot_v4_bringupCPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupCPBinding> Ros1Dobot_v4_bringupCPClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupCP.
     * @details Binds every operation to Ros1Dobot_v4_bringupCPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupCPBinding> Ros1Dobot_v4_bringupCPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupCalcTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_CalcTool_call
     */
    struct Ros1Dobot_v4_bringupCalcToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupCalcTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCalcToolRequest>
         */
        typedef Ros1Dobot_v4_bringupCalcToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupCalcTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCalcToolResponse>
         */
        typedef Ros1Dobot_v4_bringupCalcToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupCalcTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CalcTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CalcTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupCalcTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CalcTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CalcTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupCalcTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CalcTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CalcTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupCalcTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupCalcToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupCalcToolBinding> Ros1Dobot_v4_bringupCalcToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupCalcTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupCalcToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupCalcToolBinding> Ros1Dobot_v4_bringupCalcToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CALCUSER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupCalcUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_CalcUser_call
     */
    struct Ros1Dobot_v4_bringupCalcUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupCalcUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCalcUserRequest>
         */
        typedef Ros1Dobot_v4_bringupCalcUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupCalcUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCalcUserResponse>
         */
        typedef Ros1Dobot_v4_bringupCalcUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupCalcUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CalcUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CalcUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupCalcUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CalcUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CalcUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupCalcUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_CalcUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_CalcUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupCalcUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupCalcUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupCalcUserBinding> Ros1Dobot_v4_bringupCalcUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupCalcUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupCalcUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupCalcUserBinding> Ros1Dobot_v4_bringupCalcUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CIRCLE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupCircle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_Circle_call
     */
    struct Ros1Dobot_v4_bringupCircleBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCircleRequest>
         */
        typedef Ros1Dobot_v4_bringupCircleRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupCircleResponse>
         */
        typedef Ros1Dobot_v4_bringupCircleResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupCircle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Circle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Circle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupCircle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Circle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Circle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupCircle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Circle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Circle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupCircle.
     * @details Binds every operation to Ros1Dobot_v4_bringupCircleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupCircleBinding> Ros1Dobot_v4_bringupCircleClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupCircle.
     * @details Binds every operation to Ros1Dobot_v4_bringupCircleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupCircleBinding> Ros1Dobot_v4_bringupCircleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CLEARERROR 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupClearError.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ClearError_call
     */
    struct Ros1Dobot_v4_bringupClearErrorBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupClearErrorRequest>
         */
        typedef Ros1Dobot_v4_bringupClearErrorRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupClearErrorResponse>
         */
        typedef Ros1Dobot_v4_bringupClearErrorResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupClearError request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ClearError_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ClearError_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupClearError request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ClearError_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ClearError_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupClearError ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ClearError_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ClearError_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupClearError.
     * @details Binds every operation to Ros1Dobot_v4_bringupClearErrorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupClearErrorBinding> Ros1Dobot_v4_bringupClearErrorClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupClearError.
     * @details Binds every operation to Ros1Dobot_v4_bringupClearErrorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupClearErrorBinding> Ros1Dobot_v4_bringupClearErrorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_CONTINUE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupContinue.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_Continue_call
     */
    struct Ros1Dobot_v4_bringupContinueBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupContinue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupContinueRequest>
         */
        typedef Ros1Dobot_v4_bringupContinueRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupContinue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupContinueResponse>
         */
        typedef Ros1Dobot_v4_bringupContinueResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupContinue request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Continue_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Continue_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupContinue request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Continue_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Continue_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupContinue ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Continue_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Continue_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupContinue.
     * @details Binds every operation to Ros1Dobot_v4_bringupContinueBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupContinueBinding> Ros1Dobot_v4_bringupContinueClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupContinue.
     * @details Binds every operation to Ros1Dobot_v4_bringupContinueBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupContinueBinding> Ros1Dobot_v4_bringupContinueServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_DI_call
     */
    struct Ros1Dobot_v4_bringupDIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDIRequest>
         */
        typedef Ros1Dobot_v4_bringupDIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDIResponse>
         */
        typedef Ros1Dobot_v4_bringupDIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupDI.
     * @details Binds every operation to Ros1Dobot_v4_bringupDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupDIBinding> Ros1Dobot_v4_bringupDIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupDI.
     * @details Binds every operation to Ros1Dobot_v4_bringupDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupDIBinding> Ros1Dobot_v4_bringupDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DIGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupDIGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_DIGroup_call
     */
    struct Ros1Dobot_v4_bringupDIGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupDIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDIGroupRequest>
         */
        typedef Ros1Dobot_v4_bringupDIGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupDIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDIGroupResponse>
         */
        typedef Ros1Dobot_v4_bringupDIGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupDIGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DIGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DIGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupDIGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DIGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DIGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupDIGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DIGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DIGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupDIGroup.
     * @details Binds every operation to Ros1Dobot_v4_bringupDIGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupDIGroupBinding> Ros1Dobot_v4_bringupDIGroupClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupDIGroup.
     * @details Binds every operation to Ros1Dobot_v4_bringupDIGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupDIGroupBinding> Ros1Dobot_v4_bringupDIGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_DO_call
     */
    struct Ros1Dobot_v4_bringupDOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDORequest>
         */
        typedef Ros1Dobot_v4_bringupDORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDOResponse>
         */
        typedef Ros1Dobot_v4_bringupDOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupDO.
     * @details Binds every operation to Ros1Dobot_v4_bringupDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupDOBinding> Ros1Dobot_v4_bringupDOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupDO.
     * @details Binds every operation to Ros1Dobot_v4_bringupDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupDOBinding> Ros1Dobot_v4_bringupDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupDOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_DOGroup_call
     */
    struct Ros1Dobot_v4_bringupDOGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDOGroupRequest>
         */
        typedef Ros1Dobot_v4_bringupDOGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDOGroupResponse>
         */
        typedef Ros1Dobot_v4_bringupDOGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupDOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupDOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupDOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupDOGroup.
     * @details Binds every operation to Ros1Dobot_v4_bringupDOGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupDOGroupBinding> Ros1Dobot_v4_bringupDOGroupClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupDOGroup.
     * @details Binds every operation to Ros1Dobot_v4_bringupDOGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupDOGroupBinding> Ros1Dobot_v4_bringupDOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupDOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_DOInstant_call
     */
    struct Ros1Dobot_v4_bringupDOInstantBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDOInstantRequest>
         */
        typedef Ros1Dobot_v4_bringupDOInstantRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDOInstantResponse>
         */
        typedef Ros1Dobot_v4_bringupDOInstantResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupDOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupDOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupDOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupDOInstant.
     * @details Binds every operation to Ros1Dobot_v4_bringupDOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupDOInstantBinding> Ros1Dobot_v4_bringupDOInstantClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupDOInstant.
     * @details Binds every operation to Ros1Dobot_v4_bringupDOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupDOInstantBinding> Ros1Dobot_v4_bringupDOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DISABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupDisableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_call
     */
    struct Ros1Dobot_v4_bringupDisableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupDisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDisableRobotRequest>
         */
        typedef Ros1Dobot_v4_bringupDisableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupDisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDisableRobotResponse>
         */
        typedef Ros1Dobot_v4_bringupDisableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupDisableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupDisableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupDisableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DisableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupDisableRobot.
     * @details Binds every operation to Ros1Dobot_v4_bringupDisableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupDisableRobotBinding> Ros1Dobot_v4_bringupDisableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupDisableRobot.
     * @details Binds every operation to Ros1Dobot_v4_bringupDisableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupDisableRobotBinding> Ros1Dobot_v4_bringupDisableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_DRAGSENSIVITY 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupDragSensivity.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_call
     */
    struct Ros1Dobot_v4_bringupDragSensivityBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupDragSensivity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDragSensivityRequest>
         */
        typedef Ros1Dobot_v4_bringupDragSensivityRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupDragSensivity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupDragSensivityResponse>
         */
        typedef Ros1Dobot_v4_bringupDragSensivityResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupDragSensivity request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupDragSensivity request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupDragSensivity ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_DragSensivity_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupDragSensivity.
     * @details Binds every operation to Ros1Dobot_v4_bringupDragSensivityBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupDragSensivityBinding> Ros1Dobot_v4_bringupDragSensivityClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupDragSensivity.
     * @details Binds every operation to Ros1Dobot_v4_bringupDragSensivityBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupDragSensivityBinding> Ros1Dobot_v4_bringupDragSensivityServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_EMERGENCYSTOP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupEmergencyStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_call
     */
    struct Ros1Dobot_v4_bringupEmergencyStopBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupEmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupEmergencyStopRequest>
         */
        typedef Ros1Dobot_v4_bringupEmergencyStopRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupEmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupEmergencyStopResponse>
         */
        typedef Ros1Dobot_v4_bringupEmergencyStopResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupEmergencyStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupEmergencyStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupEmergencyStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EmergencyStop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupEmergencyStop.
     * @details Binds every operation to Ros1Dobot_v4_bringupEmergencyStopBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupEmergencyStopBinding> Ros1Dobot_v4_bringupEmergencyStopClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupEmergencyStop.
     * @details Binds every operation to Ros1Dobot_v4_bringupEmergencyStopBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupEmergencyStopBinding> Ros1Dobot_v4_bringupEmergencyStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupEnableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_call
     */
    struct Ros1Dobot_v4_bringupEnableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupEnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupEnableRobotRequest>
         */
        typedef Ros1Dobot_v4_bringupEnableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupEnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupEnableRobotResponse>
         */
        typedef Ros1Dobot_v4_bringupEnableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupEnableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupEnableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupEnableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EnableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupEnableRobot.
     * @details Binds every operation to Ros1Dobot_v4_bringupEnableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupEnableRobotBinding> Ros1Dobot_v4_bringupEnableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupEnableRobot.
     * @details Binds every operation to Ros1Dobot_v4_bringupEnableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupEnableRobotBinding> Ros1Dobot_v4_bringupEnableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ENABLESAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupEnableSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_call
     */
    struct Ros1Dobot_v4_bringupEnableSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupEnableSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupEnableSafeSkinRequest>
         */
        typedef Ros1Dobot_v4_bringupEnableSafeSkinRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupEnableSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupEnableSafeSkinResponse>
         */
        typedef Ros1Dobot_v4_bringupEnableSafeSkinResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupEnableSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupEnableSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupEnableSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_EnableSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupEnableSafeSkin.
     * @details Binds every operation to Ros1Dobot_v4_bringupEnableSafeSkinBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupEnableSafeSkinBinding> Ros1Dobot_v4_bringupEnableSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupEnableSafeSkin.
     * @details Binds every operation to Ros1Dobot_v4_bringupEnableSafeSkinBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupEnableSafeSkinBinding> Ros1Dobot_v4_bringupEnableSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETAO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetAO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetAO_call
     */
    struct Ros1Dobot_v4_bringupGetAOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetAORequest>
         */
        typedef Ros1Dobot_v4_bringupGetAORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetAOResponse>
         */
        typedef Ros1Dobot_v4_bringupGetAOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetAO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetAO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetAO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetAO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetAO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetAO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetAO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetAO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetAO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetAO.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetAOBinding> Ros1Dobot_v4_bringupGetAOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetAO.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetAOBinding> Ros1Dobot_v4_bringupGetAOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETANGLE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetAngle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetAngle_call
     */
    struct Ros1Dobot_v4_bringupGetAngleBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetAngleRequest>
         */
        typedef Ros1Dobot_v4_bringupGetAngleRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetAngleResponse>
         */
        typedef Ros1Dobot_v4_bringupGetAngleResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetAngle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetAngle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetAngle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetAngle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetAngle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetAngle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetAngle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetAngle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetAngle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetAngle.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetAngleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetAngleBinding> Ros1Dobot_v4_bringupGetAngleClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetAngle.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetAngleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetAngleBinding> Ros1Dobot_v4_bringupGetAngleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetCoils_call
     */
    struct Ros1Dobot_v4_bringupGetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetCoilsRequest>
         */
        typedef Ros1Dobot_v4_bringupGetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetCoilsResponse>
         */
        typedef Ros1Dobot_v4_bringupGetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetCoils.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetCoilsBinding> Ros1Dobot_v4_bringupGetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetCoils.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetCoilsBinding> Ros1Dobot_v4_bringupGetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETCURRENTCOMMANDID 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetCurrentCommandId.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_call
     */
    struct Ros1Dobot_v4_bringupGetCurrentCommandIdBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetCurrentCommandId.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetCurrentCommandIdRequest>
         */
        typedef Ros1Dobot_v4_bringupGetCurrentCommandIdRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetCurrentCommandId.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetCurrentCommandIdResponse>
         */
        typedef Ros1Dobot_v4_bringupGetCurrentCommandIdResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetCurrentCommandId request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetCurrentCommandId request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetCurrentCommandId ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetCurrentCommandId_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetCurrentCommandId.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetCurrentCommandIdBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetCurrentCommandIdBinding> Ros1Dobot_v4_bringupGetCurrentCommandIdClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetCurrentCommandId.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetCurrentCommandIdBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetCurrentCommandIdBinding> Ros1Dobot_v4_bringupGetCurrentCommandIdServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetDO_call
     */
    struct Ros1Dobot_v4_bringupGetDOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetDORequest>
         */
        typedef Ros1Dobot_v4_bringupGetDORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetDOResponse>
         */
        typedef Ros1Dobot_v4_bringupGetDOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetDO.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetDOBinding> Ros1Dobot_v4_bringupGetDOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetDO.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetDOBinding> Ros1Dobot_v4_bringupGetDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETDOGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetDOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_call
     */
    struct Ros1Dobot_v4_bringupGetDOGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetDOGroupRequest>
         */
        typedef Ros1Dobot_v4_bringupGetDOGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetDOGroupResponse>
         */
        typedef Ros1Dobot_v4_bringupGetDOGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetDOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetDOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetDOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetDOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetDOGroup.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetDOGroupBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetDOGroupBinding> Ros1Dobot_v4_bringupGetDOGroupClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetDOGroup.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetDOGroupBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetDOGroupBinding> Ros1Dobot_v4_bringupGetDOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETERRORID 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetErrorID.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_call
     */
    struct Ros1Dobot_v4_bringupGetErrorIDBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetErrorIDRequest>
         */
        typedef Ros1Dobot_v4_bringupGetErrorIDRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetErrorIDResponse>
         */
        typedef Ros1Dobot_v4_bringupGetErrorIDResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetErrorID request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetErrorID request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetErrorID ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetErrorID_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetErrorID.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetErrorIDBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetErrorIDBinding> Ros1Dobot_v4_bringupGetErrorIDClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetErrorID.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetErrorIDBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetErrorIDBinding> Ros1Dobot_v4_bringupGetErrorIDServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_call
     */
    struct Ros1Dobot_v4_bringupGetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetHoldRegsRequest>
         */
        typedef Ros1Dobot_v4_bringupGetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetHoldRegsResponse>
         */
        typedef Ros1Dobot_v4_bringupGetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetHoldRegs.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetHoldRegsBinding> Ros1Dobot_v4_bringupGetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetHoldRegs.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetHoldRegsBinding> Ros1Dobot_v4_bringupGetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINBITS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetInBits.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetInBits_call
     */
    struct Ros1Dobot_v4_bringupGetInBitsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInBitsRequest>
         */
        typedef Ros1Dobot_v4_bringupGetInBitsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInBitsResponse>
         */
        typedef Ros1Dobot_v4_bringupGetInBitsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetInBits request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInBits_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInBits_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetInBits request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInBits_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInBits_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetInBits ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInBits_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInBits_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetInBits.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInBitsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetInBitsBinding> Ros1Dobot_v4_bringupGetInBitsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetInBits.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInBitsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetInBitsBinding> Ros1Dobot_v4_bringupGetInBitsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINREGS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetInRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_call
     */
    struct Ros1Dobot_v4_bringupGetInRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInRegsRequest>
         */
        typedef Ros1Dobot_v4_bringupGetInRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInRegsResponse>
         */
        typedef Ros1Dobot_v4_bringupGetInRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetInRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetInRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetInRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetInRegs.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetInRegsBinding> Ros1Dobot_v4_bringupGetInRegsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetInRegs.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetInRegsBinding> Ros1Dobot_v4_bringupGetInRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetInputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_call
     */
    struct Ros1Dobot_v4_bringupGetInputBoolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetInputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInputBoolRequest>
         */
        typedef Ros1Dobot_v4_bringupGetInputBoolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetInputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInputBoolResponse>
         */
        typedef Ros1Dobot_v4_bringupGetInputBoolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetInputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetInputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetInputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetInputBool.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInputBoolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetInputBoolBinding> Ros1Dobot_v4_bringupGetInputBoolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetInputBool.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInputBoolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetInputBoolBinding> Ros1Dobot_v4_bringupGetInputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetInputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_call
     */
    struct Ros1Dobot_v4_bringupGetInputFloatBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetInputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInputFloatRequest>
         */
        typedef Ros1Dobot_v4_bringupGetInputFloatRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetInputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInputFloatResponse>
         */
        typedef Ros1Dobot_v4_bringupGetInputFloatResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetInputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetInputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetInputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetInputFloat.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetInputFloatBinding> Ros1Dobot_v4_bringupGetInputFloatClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetInputFloat.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetInputFloatBinding> Ros1Dobot_v4_bringupGetInputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETINPUTINT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetInputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_call
     */
    struct Ros1Dobot_v4_bringupGetInputIntBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetInputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInputIntRequest>
         */
        typedef Ros1Dobot_v4_bringupGetInputIntRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetInputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetInputIntResponse>
         */
        typedef Ros1Dobot_v4_bringupGetInputIntResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetInputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetInputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetInputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetInputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetInputInt.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetInputIntBinding> Ros1Dobot_v4_bringupGetInputIntClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetInputInt.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetInputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetInputIntBinding> Ros1Dobot_v4_bringupGetInputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetOutputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_call
     */
    struct Ros1Dobot_v4_bringupGetOutputBoolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetOutputBoolRequest>
         */
        typedef Ros1Dobot_v4_bringupGetOutputBoolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetOutputBoolResponse>
         */
        typedef Ros1Dobot_v4_bringupGetOutputBoolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetOutputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetOutputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetOutputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetOutputBool.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetOutputBoolBinding> Ros1Dobot_v4_bringupGetOutputBoolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetOutputBool.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetOutputBoolBinding> Ros1Dobot_v4_bringupGetOutputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetOutputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_call
     */
    struct Ros1Dobot_v4_bringupGetOutputFloatBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetOutputFloatRequest>
         */
        typedef Ros1Dobot_v4_bringupGetOutputFloatRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetOutputFloatResponse>
         */
        typedef Ros1Dobot_v4_bringupGetOutputFloatResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetOutputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetOutputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetOutputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetOutputFloat.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetOutputFloatBinding> Ros1Dobot_v4_bringupGetOutputFloatClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetOutputFloat.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetOutputFloatBinding> Ros1Dobot_v4_bringupGetOutputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETOUTPUTINT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetOutputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_call
     */
    struct Ros1Dobot_v4_bringupGetOutputIntBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetOutputIntRequest>
         */
        typedef Ros1Dobot_v4_bringupGetOutputIntRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetOutputIntResponse>
         */
        typedef Ros1Dobot_v4_bringupGetOutputIntResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetOutputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetOutputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetOutputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetOutputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetOutputInt.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetOutputIntBinding> Ros1Dobot_v4_bringupGetOutputIntClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetOutputInt.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetOutputIntBinding> Ros1Dobot_v4_bringupGetOutputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetPose_call
     */
    struct Ros1Dobot_v4_bringupGetPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetPoseRequest>
         */
        typedef Ros1Dobot_v4_bringupGetPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetPoseResponse>
         */
        typedef Ros1Dobot_v4_bringupGetPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetPose.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetPoseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetPoseBinding> Ros1Dobot_v4_bringupGetPoseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetPose.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetPoseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetPoseBinding> Ros1Dobot_v4_bringupGetPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_GETSTARTPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupGetStartPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_call
     */
    struct Ros1Dobot_v4_bringupGetStartPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupGetStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetStartPoseRequest>
         */
        typedef Ros1Dobot_v4_bringupGetStartPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupGetStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupGetStartPoseResponse>
         */
        typedef Ros1Dobot_v4_bringupGetStartPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupGetStartPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupGetStartPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupGetStartPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_GetStartPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupGetStartPose.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupGetStartPoseBinding> Ros1Dobot_v4_bringupGetStartPoseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupGetStartPose.
     * @details Binds every operation to Ros1Dobot_v4_bringupGetStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupGetStartPoseBinding> Ros1Dobot_v4_bringupGetStartPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSEKIN 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupInverseKin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_InverseKin_call
     */
    struct Ros1Dobot_v4_bringupInverseKinBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupInverseKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupInverseKinRequest>
         */
        typedef Ros1Dobot_v4_bringupInverseKinRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupInverseKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupInverseKinResponse>
         */
        typedef Ros1Dobot_v4_bringupInverseKinResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupInverseKin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_InverseKin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_InverseKin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupInverseKin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_InverseKin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_InverseKin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupInverseKin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_InverseKin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_InverseKin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupInverseKin.
     * @details Binds every operation to Ros1Dobot_v4_bringupInverseKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupInverseKinBinding> Ros1Dobot_v4_bringupInverseKinClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupInverseKin.
     * @details Binds every operation to Ros1Dobot_v4_bringupInverseKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupInverseKinBinding> Ros1Dobot_v4_bringupInverseKinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_INVERSESOLUTION 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupInverseSolution.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_call
     */
    struct Ros1Dobot_v4_bringupInverseSolutionBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupInverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupInverseSolutionRequest>
         */
        typedef Ros1Dobot_v4_bringupInverseSolutionRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupInverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupInverseSolutionResponse>
         */
        typedef Ros1Dobot_v4_bringupInverseSolutionResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupInverseSolution request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupInverseSolution request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupInverseSolution ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_InverseSolution_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupInverseSolution.
     * @details Binds every operation to Ros1Dobot_v4_bringupInverseSolutionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupInverseSolutionBinding> Ros1Dobot_v4_bringupInverseSolutionClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupInverseSolution.
     * @details Binds every operation to Ros1Dobot_v4_bringupInverseSolutionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupInverseSolutionBinding> Ros1Dobot_v4_bringupInverseSolutionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCLOSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupModbusClose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_call
     */
    struct Ros1Dobot_v4_bringupModbusCloseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupModbusCloseRequest>
         */
        typedef Ros1Dobot_v4_bringupModbusCloseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupModbusCloseResponse>
         */
        typedef Ros1Dobot_v4_bringupModbusCloseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupModbusClose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupModbusClose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupModbusClose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusClose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupModbusClose.
     * @details Binds every operation to Ros1Dobot_v4_bringupModbusCloseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupModbusCloseBinding> Ros1Dobot_v4_bringupModbusCloseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupModbusClose.
     * @details Binds every operation to Ros1Dobot_v4_bringupModbusCloseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupModbusCloseBinding> Ros1Dobot_v4_bringupModbusCloseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSCREATE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupModbusCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_call
     */
    struct Ros1Dobot_v4_bringupModbusCreateBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupModbusCreateRequest>
         */
        typedef Ros1Dobot_v4_bringupModbusCreateRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupModbusCreateResponse>
         */
        typedef Ros1Dobot_v4_bringupModbusCreateResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupModbusCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupModbusCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupModbusCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupModbusCreate.
     * @details Binds every operation to Ros1Dobot_v4_bringupModbusCreateBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupModbusCreateBinding> Ros1Dobot_v4_bringupModbusCreateClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupModbusCreate.
     * @details Binds every operation to Ros1Dobot_v4_bringupModbusCreateBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupModbusCreateBinding> Ros1Dobot_v4_bringupModbusCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MODBUSRTUCREATE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupModbusRTUCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_call
     */
    struct Ros1Dobot_v4_bringupModbusRTUCreateBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupModbusRTUCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupModbusRTUCreateRequest>
         */
        typedef Ros1Dobot_v4_bringupModbusRTUCreateRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupModbusRTUCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupModbusRTUCreateResponse>
         */
        typedef Ros1Dobot_v4_bringupModbusRTUCreateResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupModbusRTUCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupModbusRTUCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupModbusRTUCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ModbusRTUCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupModbusRTUCreate.
     * @details Binds every operation to Ros1Dobot_v4_bringupModbusRTUCreateBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupModbusRTUCreateBinding> Ros1Dobot_v4_bringupModbusRTUCreateClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupModbusRTUCreate.
     * @details Binds every operation to Ros1Dobot_v4_bringupModbusRTUCreateBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupModbusRTUCreateBinding> Ros1Dobot_v4_bringupModbusRTUCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_MovJ_call
     */
    struct Ros1Dobot_v4_bringupMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovJRequest>
         */
        typedef Ros1Dobot_v4_bringupMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovJResponse>
         */
        typedef Ros1Dobot_v4_bringupMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupMovJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupMovJBinding> Ros1Dobot_v4_bringupMovJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupMovJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupMovJBinding> Ros1Dobot_v4_bringupMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVJIO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupMovJIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_MovJIO_call
     */
    struct Ros1Dobot_v4_bringupMovJIOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupMovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovJIORequest>
         */
        typedef Ros1Dobot_v4_bringupMovJIORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupMovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovJIOResponse>
         */
        typedef Ros1Dobot_v4_bringupMovJIOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupMovJIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovJIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovJIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupMovJIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovJIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovJIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupMovJIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovJIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovJIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupMovJIO.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovJIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupMovJIOBinding> Ros1Dobot_v4_bringupMovJIOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupMovJIO.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovJIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupMovJIOBinding> Ros1Dobot_v4_bringupMovJIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupMovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_MovL_call
     */
    struct Ros1Dobot_v4_bringupMovLBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovLRequest>
         */
        typedef Ros1Dobot_v4_bringupMovLRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovLResponse>
         */
        typedef Ros1Dobot_v4_bringupMovLResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupMovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupMovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupMovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupMovL.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupMovLBinding> Ros1Dobot_v4_bringupMovLClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupMovL.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupMovLBinding> Ros1Dobot_v4_bringupMovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVLIO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupMovLIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_MovLIO_call
     */
    struct Ros1Dobot_v4_bringupMovLIOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupMovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovLIORequest>
         */
        typedef Ros1Dobot_v4_bringupMovLIORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupMovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMovLIOResponse>
         */
        typedef Ros1Dobot_v4_bringupMovLIOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupMovLIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovLIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovLIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupMovLIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovLIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovLIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupMovLIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MovLIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MovLIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupMovLIO.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovLIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupMovLIOBinding> Ros1Dobot_v4_bringupMovLIOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupMovLIO.
     * @details Binds every operation to Ros1Dobot_v4_bringupMovLIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupMovLIOBinding> Ros1Dobot_v4_bringupMovLIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_MOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupMoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_MoveJog_call
     */
    struct Ros1Dobot_v4_bringupMoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMoveJogRequest>
         */
        typedef Ros1Dobot_v4_bringupMoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupMoveJogResponse>
         */
        typedef Ros1Dobot_v4_bringupMoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupMoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupMoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupMoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_MoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_MoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupMoveJog.
     * @details Binds every operation to Ros1Dobot_v4_bringupMoveJogBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupMoveJogBinding> Ros1Dobot_v4_bringupMoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupMoveJog.
     * @details Binds every operation to Ros1Dobot_v4_bringupMoveJogBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupMoveJogBinding> Ros1Dobot_v4_bringupMoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_PAUSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupPause.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_Pause_call
     */
    struct Ros1Dobot_v4_bringupPauseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupPause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupPauseRequest>
         */
        typedef Ros1Dobot_v4_bringupPauseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupPause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupPauseResponse>
         */
        typedef Ros1Dobot_v4_bringupPauseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupPause request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Pause_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Pause_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupPause request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Pause_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Pause_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupPause ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Pause_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Pause_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupPause.
     * @details Binds every operation to Ros1Dobot_v4_bringupPauseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupPauseBinding> Ros1Dobot_v4_bringupPauseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupPause.
     * @details Binds every operation to Ros1Dobot_v4_bringupPauseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupPauseBinding> Ros1Dobot_v4_bringupPauseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POSITIVEKIN 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupPositiveKin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_call
     */
    struct Ros1Dobot_v4_bringupPositiveKinBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupPositiveKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupPositiveKinRequest>
         */
        typedef Ros1Dobot_v4_bringupPositiveKinRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupPositiveKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupPositiveKinResponse>
         */
        typedef Ros1Dobot_v4_bringupPositiveKinResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupPositiveKin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupPositiveKin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupPositiveKin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_PositiveKin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupPositiveKin.
     * @details Binds every operation to Ros1Dobot_v4_bringupPositiveKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupPositiveKinBinding> Ros1Dobot_v4_bringupPositiveKinClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupPositiveKin.
     * @details Binds every operation to Ros1Dobot_v4_bringupPositiveKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupPositiveKinBinding> Ros1Dobot_v4_bringupPositiveKinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_POWERON 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupPowerOn.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_PowerOn_call
     */
    struct Ros1Dobot_v4_bringupPowerOnBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupPowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupPowerOnRequest>
         */
        typedef Ros1Dobot_v4_bringupPowerOnRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupPowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupPowerOnResponse>
         */
        typedef Ros1Dobot_v4_bringupPowerOnResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupPowerOn request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_PowerOn_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_PowerOn_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupPowerOn request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_PowerOn_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_PowerOn_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupPowerOn ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_PowerOn_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_PowerOn_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupPowerOn.
     * @details Binds every operation to Ros1Dobot_v4_bringupPowerOnBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupPowerOnBinding> Ros1Dobot_v4_bringupPowerOnClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupPowerOn.
     * @details Binds every operation to Ros1Dobot_v4_bringupPowerOnBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupPowerOnBinding> Ros1Dobot_v4_bringupPowerOnServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELJOINTMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupRelJointMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_call
     */
    struct Ros1Dobot_v4_bringupRelJointMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupRelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelJointMovJRequest>
         */
        typedef Ros1Dobot_v4_bringupRelJointMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupRelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelJointMovJResponse>
         */
        typedef Ros1Dobot_v4_bringupRelJointMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupRelJointMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupRelJointMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupRelJointMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelJointMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupRelJointMovJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelJointMovJBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupRelJointMovJBinding> Ros1Dobot_v4_bringupRelJointMovJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupRelJointMovJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelJointMovJBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupRelJointMovJBinding> Ros1Dobot_v4_bringupRelJointMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupRelMovJTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_call
     */
    struct Ros1Dobot_v4_bringupRelMovJToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupRelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovJToolRequest>
         */
        typedef Ros1Dobot_v4_bringupRelMovJToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupRelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovJToolResponse>
         */
        typedef Ros1Dobot_v4_bringupRelMovJToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupRelMovJTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupRelMovJTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupRelMovJTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovJTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupRelMovJTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovJToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupRelMovJToolBinding> Ros1Dobot_v4_bringupRelMovJToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupRelMovJTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovJToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupRelMovJToolBinding> Ros1Dobot_v4_bringupRelMovJToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVJUSER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupRelMovJUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_call
     */
    struct Ros1Dobot_v4_bringupRelMovJUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupRelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovJUserRequest>
         */
        typedef Ros1Dobot_v4_bringupRelMovJUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupRelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovJUserResponse>
         */
        typedef Ros1Dobot_v4_bringupRelMovJUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupRelMovJUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupRelMovJUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupRelMovJUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovJUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupRelMovJUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovJUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupRelMovJUserBinding> Ros1Dobot_v4_bringupRelMovJUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupRelMovJUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovJUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupRelMovJUserBinding> Ros1Dobot_v4_bringupRelMovJUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupRelMovLTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_call
     */
    struct Ros1Dobot_v4_bringupRelMovLToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupRelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovLToolRequest>
         */
        typedef Ros1Dobot_v4_bringupRelMovLToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupRelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovLToolResponse>
         */
        typedef Ros1Dobot_v4_bringupRelMovLToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupRelMovLTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupRelMovLTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupRelMovLTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovLTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupRelMovLTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovLToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupRelMovLToolBinding> Ros1Dobot_v4_bringupRelMovLToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupRelMovLTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovLToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupRelMovLToolBinding> Ros1Dobot_v4_bringupRelMovLToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RELMOVLUSER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupRelMovLUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_call
     */
    struct Ros1Dobot_v4_bringupRelMovLUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupRelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovLUserRequest>
         */
        typedef Ros1Dobot_v4_bringupRelMovLUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupRelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRelMovLUserResponse>
         */
        typedef Ros1Dobot_v4_bringupRelMovLUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupRelMovLUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupRelMovLUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupRelMovLUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RelMovLUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupRelMovLUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovLUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupRelMovLUserBinding> Ros1Dobot_v4_bringupRelMovLUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupRelMovLUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupRelMovLUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupRelMovLUserBinding> Ros1Dobot_v4_bringupRelMovLUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_ROBOTMODE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupRobotMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_RobotMode_call
     */
    struct Ros1Dobot_v4_bringupRobotModeBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupRobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRobotModeRequest>
         */
        typedef Ros1Dobot_v4_bringupRobotModeRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupRobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRobotModeResponse>
         */
        typedef Ros1Dobot_v4_bringupRobotModeResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupRobotMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RobotMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RobotMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupRobotMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RobotMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RobotMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupRobotMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RobotMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RobotMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupRobotMode.
     * @details Binds every operation to Ros1Dobot_v4_bringupRobotModeBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupRobotModeBinding> Ros1Dobot_v4_bringupRobotModeClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupRobotMode.
     * @details Binds every operation to Ros1Dobot_v4_bringupRobotModeBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupRobotModeBinding> Ros1Dobot_v4_bringupRobotModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_RUNSCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupRunScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_RunScript_call
     */
    struct Ros1Dobot_v4_bringupRunScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupRunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRunScriptRequest>
         */
        typedef Ros1Dobot_v4_bringupRunScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupRunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupRunScriptResponse>
         */
        typedef Ros1Dobot_v4_bringupRunScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupRunScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RunScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RunScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupRunScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RunScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RunScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupRunScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_RunScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_RunScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupRunScript.
     * @details Binds every operation to Ros1Dobot_v4_bringupRunScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupRunScriptBinding> Ros1Dobot_v4_bringupRunScriptClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupRunScript.
     * @details Binds every operation to Ros1Dobot_v4_bringupRunScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupRunScriptBinding> Ros1Dobot_v4_bringupRunScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupServoJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ServoJ_call
     */
    struct Ros1Dobot_v4_bringupServoJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupServoJRequest>
         */
        typedef Ros1Dobot_v4_bringupServoJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupServoJResponse>
         */
        typedef Ros1Dobot_v4_bringupServoJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupServoJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ServoJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ServoJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupServoJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ServoJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ServoJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupServoJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ServoJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ServoJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupServoJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupServoJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupServoJBinding> Ros1Dobot_v4_bringupServoJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupServoJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupServoJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupServoJBinding> Ros1Dobot_v4_bringupServoJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SERVOP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupServoP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ServoP_call
     */
    struct Ros1Dobot_v4_bringupServoPBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupServoPRequest>
         */
        typedef Ros1Dobot_v4_bringupServoPRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupServoPResponse>
         */
        typedef Ros1Dobot_v4_bringupServoPResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupServoP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ServoP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ServoP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupServoP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ServoP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ServoP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupServoP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ServoP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ServoP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupServoP.
     * @details Binds every operation to Ros1Dobot_v4_bringupServoPBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupServoPBinding> Ros1Dobot_v4_bringupServoPClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupServoP.
     * @details Binds every operation to Ros1Dobot_v4_bringupServoPBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupServoPBinding> Ros1Dobot_v4_bringupServoPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETBACKDISTANCE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetBackDistance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_call
     */
    struct Ros1Dobot_v4_bringupSetBackDistanceBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetBackDistance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetBackDistanceRequest>
         */
        typedef Ros1Dobot_v4_bringupSetBackDistanceRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetBackDistance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetBackDistanceResponse>
         */
        typedef Ros1Dobot_v4_bringupSetBackDistanceResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetBackDistance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetBackDistance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetBackDistance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetBackDistance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetBackDistance.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetBackDistanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetBackDistanceBinding> Ros1Dobot_v4_bringupSetBackDistanceClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetBackDistance.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetBackDistanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetBackDistanceBinding> Ros1Dobot_v4_bringupSetBackDistanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetCoils_call
     */
    struct Ros1Dobot_v4_bringupSetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetCoilsRequest>
         */
        typedef Ros1Dobot_v4_bringupSetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetCoilsResponse>
         */
        typedef Ros1Dobot_v4_bringupSetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetCoils.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetCoilsBinding> Ros1Dobot_v4_bringupSetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetCoils.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetCoilsBinding> Ros1Dobot_v4_bringupSetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETCOLLISIONLEVEL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetCollisionLevel.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_call
     */
    struct Ros1Dobot_v4_bringupSetCollisionLevelBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetCollisionLevelRequest>
         */
        typedef Ros1Dobot_v4_bringupSetCollisionLevelRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetCollisionLevelResponse>
         */
        typedef Ros1Dobot_v4_bringupSetCollisionLevelResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetCollisionLevel request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetCollisionLevel request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetCollisionLevel ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetCollisionLevel_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetCollisionLevel.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetCollisionLevelBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetCollisionLevelBinding> Ros1Dobot_v4_bringupSetCollisionLevelClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetCollisionLevel.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetCollisionLevelBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetCollisionLevelBinding> Ros1Dobot_v4_bringupSetCollisionLevelServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_call
     */
    struct Ros1Dobot_v4_bringupSetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetHoldRegsRequest>
         */
        typedef Ros1Dobot_v4_bringupSetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetHoldRegsResponse>
         */
        typedef Ros1Dobot_v4_bringupSetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetHoldRegs.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetHoldRegsBinding> Ros1Dobot_v4_bringupSetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetHoldRegs.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetHoldRegsBinding> Ros1Dobot_v4_bringupSetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetOutputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_call
     */
    struct Ros1Dobot_v4_bringupSetOutputBoolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetOutputBoolRequest>
         */
        typedef Ros1Dobot_v4_bringupSetOutputBoolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetOutputBoolResponse>
         */
        typedef Ros1Dobot_v4_bringupSetOutputBoolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetOutputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetOutputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetOutputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetOutputBool.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetOutputBoolBinding> Ros1Dobot_v4_bringupSetOutputBoolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetOutputBool.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetOutputBoolBinding> Ros1Dobot_v4_bringupSetOutputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetOutputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_call
     */
    struct Ros1Dobot_v4_bringupSetOutputFloatBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetOutputFloatRequest>
         */
        typedef Ros1Dobot_v4_bringupSetOutputFloatRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetOutputFloatResponse>
         */
        typedef Ros1Dobot_v4_bringupSetOutputFloatResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetOutputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetOutputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetOutputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetOutputFloat.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetOutputFloatBinding> Ros1Dobot_v4_bringupSetOutputFloatClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetOutputFloat.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetOutputFloatBinding> Ros1Dobot_v4_bringupSetOutputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETOUTPUTINT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetOutputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_call
     */
    struct Ros1Dobot_v4_bringupSetOutputIntBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetOutputIntRequest>
         */
        typedef Ros1Dobot_v4_bringupSetOutputIntRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetOutputIntResponse>
         */
        typedef Ros1Dobot_v4_bringupSetOutputIntResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetOutputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetOutputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetOutputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetOutputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetOutputInt.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetOutputIntBinding> Ros1Dobot_v4_bringupSetOutputIntClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetOutputInt.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetOutputIntBinding> Ros1Dobot_v4_bringupSetOutputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPAYLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetPayload.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetPayload_call
     */
    struct Ros1Dobot_v4_bringupSetPayloadBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetPayloadRequest>
         */
        typedef Ros1Dobot_v4_bringupSetPayloadRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetPayloadResponse>
         */
        typedef Ros1Dobot_v4_bringupSetPayloadResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetPayload request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetPayload_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetPayload_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetPayload request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetPayload_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetPayload_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetPayload ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetPayload_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetPayload_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetPayload.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetPayloadBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetPayloadBinding> Ros1Dobot_v4_bringupSetPayloadClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetPayload.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetPayloadBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetPayloadBinding> Ros1Dobot_v4_bringupSetPayloadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETPOSTCOLLISIONMODE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetPostCollisionMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_call
     */
    struct Ros1Dobot_v4_bringupSetPostCollisionModeBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetPostCollisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetPostCollisionModeRequest>
         */
        typedef Ros1Dobot_v4_bringupSetPostCollisionModeRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetPostCollisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetPostCollisionModeResponse>
         */
        typedef Ros1Dobot_v4_bringupSetPostCollisionModeResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetPostCollisionMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetPostCollisionMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetPostCollisionMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetPostCollisionMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetPostCollisionMode.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetPostCollisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetPostCollisionModeBinding> Ros1Dobot_v4_bringupSetPostCollisionModeClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetPostCollisionMode.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetPostCollisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetPostCollisionModeBinding> Ros1Dobot_v4_bringupSetPostCollisionModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_call
     */
    struct Ros1Dobot_v4_bringupSetSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetSafeSkinRequest>
         */
        typedef Ros1Dobot_v4_bringupSetSafeSkinRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetSafeSkinResponse>
         */
        typedef Ros1Dobot_v4_bringupSetSafeSkinResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetSafeSkin.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetSafeSkinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetSafeSkinBinding> Ros1Dobot_v4_bringupSetSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetSafeSkin.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetSafeSkinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetSafeSkinBinding> Ros1Dobot_v4_bringupSetSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETSAFEWALLENABLE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetSafeWallEnable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_call
     */
    struct Ros1Dobot_v4_bringupSetSafeWallEnableBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetSafeWallEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetSafeWallEnableRequest>
         */
        typedef Ros1Dobot_v4_bringupSetSafeWallEnableRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetSafeWallEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetSafeWallEnableResponse>
         */
        typedef Ros1Dobot_v4_bringupSetSafeWallEnableResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetSafeWallEnable request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetSafeWallEnable request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetSafeWallEnable ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetSafeWallEnable_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetSafeWallEnable.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetSafeWallEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetSafeWallEnableBinding> Ros1Dobot_v4_bringupSetSafeWallEnableClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetSafeWallEnable.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetSafeWallEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetSafeWallEnableBinding> Ros1Dobot_v4_bringupSetSafeWallEnableServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool_call
     */
    struct Ros1Dobot_v4_bringupSetToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetToolRequest>
         */
        typedef Ros1Dobot_v4_bringupSetToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetToolResponse>
         */
        typedef Ros1Dobot_v4_bringupSetToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetToolBinding> Ros1Dobot_v4_bringupSetToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetToolBinding> Ros1Dobot_v4_bringupSetToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOL485 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetTool485.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool485_call
     */
    struct Ros1Dobot_v4_bringupSetTool485Binding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetTool485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetTool485Request>
         */
        typedef Ros1Dobot_v4_bringupSetTool485Request Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetTool485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetTool485Response>
         */
        typedef Ros1Dobot_v4_bringupSetTool485Response Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetTool485 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool485_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetTool485_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetTool485 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool485_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetTool485_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetTool485 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetTool485_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetTool485_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetTool485.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetTool485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetTool485Binding> Ros1Dobot_v4_bringupSetTool485Client;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetTool485.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetTool485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetTool485Binding> Ros1Dobot_v4_bringupSetTool485Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLMODE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetToolMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_call
     */
    struct Ros1Dobot_v4_bringupSetToolModeBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetToolMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetToolModeRequest>
         */
        typedef Ros1Dobot_v4_bringupSetToolModeRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetToolMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetToolModeResponse>
         */
        typedef Ros1Dobot_v4_bringupSetToolModeResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetToolMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetToolMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetToolMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetToolMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetToolMode.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetToolModeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetToolModeBinding> Ros1Dobot_v4_bringupSetToolModeClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetToolMode.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetToolModeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetToolModeBinding> Ros1Dobot_v4_bringupSetToolModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETTOOLPOWER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetToolPower.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_call
     */
    struct Ros1Dobot_v4_bringupSetToolPowerBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetToolPower.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetToolPowerRequest>
         */
        typedef Ros1Dobot_v4_bringupSetToolPowerRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetToolPower.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetToolPowerResponse>
         */
        typedef Ros1Dobot_v4_bringupSetToolPowerResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetToolPower request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetToolPower request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetToolPower ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetToolPower_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetToolPower.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetToolPowerBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetToolPowerBinding> Ros1Dobot_v4_bringupSetToolPowerClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetToolPower.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetToolPowerBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetToolPowerBinding> Ros1Dobot_v4_bringupSetToolPowerServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SETUSER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSetUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SetUser_call
     */
    struct Ros1Dobot_v4_bringupSetUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSetUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetUserRequest>
         */
        typedef Ros1Dobot_v4_bringupSetUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSetUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSetUserResponse>
         */
        typedef Ros1Dobot_v4_bringupSetUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSetUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSetUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSetUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SetUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SetUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSetUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSetUserBinding> Ros1Dobot_v4_bringupSetUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSetUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupSetUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSetUserBinding> Ros1Dobot_v4_bringupSetUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_SPEEDFACTOR 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupSpeedFactor.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_call
     */
    struct Ros1Dobot_v4_bringupSpeedFactorBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupSpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSpeedFactorRequest>
         */
        typedef Ros1Dobot_v4_bringupSpeedFactorRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupSpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupSpeedFactorResponse>
         */
        typedef Ros1Dobot_v4_bringupSpeedFactorResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupSpeedFactor request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupSpeedFactor request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupSpeedFactor ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_SpeedFactor_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupSpeedFactor.
     * @details Binds every operation to Ros1Dobot_v4_bringupSpeedFactorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupSpeedFactorBinding> Ros1Dobot_v4_bringupSpeedFactorClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupSpeedFactor.
     * @details Binds every operation to Ros1Dobot_v4_bringupSpeedFactorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupSpeedFactorBinding> Ros1Dobot_v4_bringupSpeedFactorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupStartDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_StartDrag_call
     */
    struct Ros1Dobot_v4_bringupStartDragBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupStartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStartDragRequest>
         */
        typedef Ros1Dobot_v4_bringupStartDragRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupStartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStartDragResponse>
         */
        typedef Ros1Dobot_v4_bringupStartDragResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupStartDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StartDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StartDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupStartDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StartDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StartDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupStartDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StartDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StartDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupStartDrag.
     * @details Binds every operation to Ros1Dobot_v4_bringupStartDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupStartDragBinding> Ros1Dobot_v4_bringupStartDragClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupStartDrag.
     * @details Binds every operation to Ros1Dobot_v4_bringupStartDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupStartDragBinding> Ros1Dobot_v4_bringupStartDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STARTPATH 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupStartPath.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_StartPath_call
     */
    struct Ros1Dobot_v4_bringupStartPathBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupStartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStartPathRequest>
         */
        typedef Ros1Dobot_v4_bringupStartPathRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupStartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStartPathResponse>
         */
        typedef Ros1Dobot_v4_bringupStartPathResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupStartPath request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StartPath_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StartPath_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupStartPath request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StartPath_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StartPath_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupStartPath ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StartPath_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StartPath_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupStartPath.
     * @details Binds every operation to Ros1Dobot_v4_bringupStartPathBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupStartPathBinding> Ros1Dobot_v4_bringupStartPathClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupStartPath.
     * @details Binds every operation to Ros1Dobot_v4_bringupStartPathBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupStartPathBinding> Ros1Dobot_v4_bringupStartPathServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_Stop_call
     */
    struct Ros1Dobot_v4_bringupStopBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStopRequest>
         */
        typedef Ros1Dobot_v4_bringupStopRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStopResponse>
         */
        typedef Ros1Dobot_v4_bringupStopResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Stop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Stop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Stop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Stop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Stop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Stop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupStop.
     * @details Binds every operation to Ros1Dobot_v4_bringupStopBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupStopBinding> Ros1Dobot_v4_bringupStopClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupStop.
     * @details Binds every operation to Ros1Dobot_v4_bringupStopBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupStopBinding> Ros1Dobot_v4_bringupStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupStopDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_StopDrag_call
     */
    struct Ros1Dobot_v4_bringupStopDragBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupStopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStopDragRequest>
         */
        typedef Ros1Dobot_v4_bringupStopDragRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupStopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStopDragResponse>
         */
        typedef Ros1Dobot_v4_bringupStopDragResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupStopDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StopDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StopDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupStopDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StopDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StopDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupStopDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StopDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StopDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupStopDrag.
     * @details Binds every operation to Ros1Dobot_v4_bringupStopDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupStopDragBinding> Ros1Dobot_v4_bringupStopDragClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupStopDrag.
     * @details Binds every operation to Ros1Dobot_v4_bringupStopDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupStopDragBinding> Ros1Dobot_v4_bringupStopDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_STOPMOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupStopMoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_call
     */
    struct Ros1Dobot_v4_bringupStopMoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupStopMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStopMoveJogRequest>
         */
        typedef Ros1Dobot_v4_bringupStopMoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupStopMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupStopMoveJogResponse>
         */
        typedef Ros1Dobot_v4_bringupStopMoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupStopMoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupStopMoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupStopMoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_StopMoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupStopMoveJog.
     * @details Binds every operation to Ros1Dobot_v4_bringupStopMoveJogBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupStopMoveJogBinding> Ros1Dobot_v4_bringupStopMoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupStopMoveJog.
     * @details Binds every operation to Ros1Dobot_v4_bringupStopMoveJogBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupStopMoveJogBinding> Ros1Dobot_v4_bringupStopMoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TCPDASHBOARD 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupTcpDashboard.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_call
     */
    struct Ros1Dobot_v4_bringupTcpDashboardBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupTcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupTcpDashboardRequest>
         */
        typedef Ros1Dobot_v4_bringupTcpDashboardRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupTcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupTcpDashboardResponse>
         */
        typedef Ros1Dobot_v4_bringupTcpDashboardResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupTcpDashboard request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupTcpDashboard request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupTcpDashboard ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_TcpDashboard_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupTcpDashboard.
     * @details Binds every operation to Ros1Dobot_v4_bringupTcpDashboardBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupTcpDashboardBinding> Ros1Dobot_v4_bringupTcpDashboardClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupTcpDashboard.
     * @details Binds every operation to Ros1Dobot_v4_bringupTcpDashboardBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupTcpDashboardBinding> Ros1Dobot_v4_bringupTcpDashboardServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_Tool_call
     */
    struct Ros1Dobot_v4_bringupToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolRequest>
         */
        typedef Ros1Dobot_v4_bringupToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolResponse>
         */
        typedef Ros1Dobot_v4_bringupToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Tool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Tool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Tool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Tool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_Tool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_Tool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupToolBinding> Ros1Dobot_v4_bringupToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupTool.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupToolBinding> Ros1Dobot_v4_bringupToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLAI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupToolAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ToolAI_call
     */
    struct Ros1Dobot_v4_bringupToolAIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolAIRequest>
         */
        typedef Ros1Dobot_v4_bringupToolAIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolAIResponse>
         */
        typedef Ros1Dobot_v4_bringupToolAIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupToolAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolAI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolAI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupToolAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolAI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolAI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupToolAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolAI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolAI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupToolAI.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolAIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupToolAIBinding> Ros1Dobot_v4_bringupToolAIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupToolAI.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolAIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupToolAIBinding> Ros1Dobot_v4_bringupToolAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupToolDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDI_call
     */
    struct Ros1Dobot_v4_bringupToolDIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolDIRequest>
         */
        typedef Ros1Dobot_v4_bringupToolDIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolDIResponse>
         */
        typedef Ros1Dobot_v4_bringupToolDIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupToolDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupToolDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupToolDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupToolDI.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolDIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupToolDIBinding> Ros1Dobot_v4_bringupToolDIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupToolDI.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolDIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupToolDIBinding> Ros1Dobot_v4_bringupToolDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupToolDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDO_call
     */
    struct Ros1Dobot_v4_bringupToolDOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolDORequest>
         */
        typedef Ros1Dobot_v4_bringupToolDORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolDOResponse>
         */
        typedef Ros1Dobot_v4_bringupToolDOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupToolDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupToolDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupToolDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupToolDO.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolDOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupToolDOBinding> Ros1Dobot_v4_bringupToolDOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupToolDO.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolDOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupToolDOBinding> Ros1Dobot_v4_bringupToolDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_TOOLDOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupToolDOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_call
     */
    struct Ros1Dobot_v4_bringupToolDOInstantBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupToolDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolDOInstantRequest>
         */
        typedef Ros1Dobot_v4_bringupToolDOInstantRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupToolDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupToolDOInstantResponse>
         */
        typedef Ros1Dobot_v4_bringupToolDOInstantResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupToolDOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupToolDOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupToolDOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_ToolDOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupToolDOInstant.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolDOInstantBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupToolDOInstantBinding> Ros1Dobot_v4_bringupToolDOInstantClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupToolDOInstant.
     * @details Binds every operation to Ros1Dobot_v4_bringupToolDOInstantBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupToolDOInstantBinding> Ros1Dobot_v4_bringupToolDOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_USER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_User_call
     */
    struct Ros1Dobot_v4_bringupUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupUserRequest>
         */
        typedef Ros1Dobot_v4_bringupUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupUserResponse>
         */
        typedef Ros1Dobot_v4_bringupUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_User_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_User_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_User_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_User_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_User_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_User_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupUserBinding> Ros1Dobot_v4_bringupUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupUser.
     * @details Binds every operation to Ros1Dobot_v4_bringupUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupUserBinding> Ros1Dobot_v4_bringupUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupVelJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_VelJ_call
     */
    struct Ros1Dobot_v4_bringupVelJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupVelJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupVelJRequest>
         */
        typedef Ros1Dobot_v4_bringupVelJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupVelJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupVelJResponse>
         */
        typedef Ros1Dobot_v4_bringupVelJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupVelJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_VelJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_VelJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupVelJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_VelJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_VelJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupVelJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_VelJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_VelJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupVelJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupVelJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupVelJBinding> Ros1Dobot_v4_bringupVelJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupVelJ.
     * @details Binds every operation to Ros1Dobot_v4_bringupVelJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupVelJBinding> Ros1Dobot_v4_bringupVelJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_V4_BRINGUP_VELL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_v4_bringupVelL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_v4_bringup_VelL_call
     */
    struct Ros1Dobot_v4_bringupVelLBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_v4_bringupVelL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupVelLRequest>
         */
        typedef Ros1Dobot_v4_bringupVelLRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_v4_bringupVelL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_v4_bringupVelLResponse>
         */
        typedef Ros1Dobot_v4_bringupVelLResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_v4_bringupVelL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_v4_bringup_VelL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_VelL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_v4_bringupVelL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_v4_bringup_VelL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_VelL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_v4_bringupVelL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_v4_bringup_VelL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_v4_bringup_VelL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_v4_bringupVelL.
     * @details Binds every operation to Ros1Dobot_v4_bringupVelLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_v4_bringupVelLBinding> Ros1Dobot_v4_bringupVelLClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_v4_bringupVelL.
     * @details Binds every operation to Ros1Dobot_v4_bringupVelLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_v4_bringupVelLBinding> Ros1Dobot_v4_bringupVelLServer;
#endif
}  // namespace uwvm_custom
