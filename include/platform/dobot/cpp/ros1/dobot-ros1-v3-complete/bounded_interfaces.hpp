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
#include <dobot/c/ros1/dobot-ros1-v3-complete/bounded_interfaces.h>
#include <dobot/cpp/ros1/dobot-ros1-v3-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_AI_call
     */
    struct Ros1Dobot_bringupAIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAIRequest>
         */
        typedef Ros1Dobot_bringupAIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAIResponse>
         */
        typedef Ros1Dobot_bringupAIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_AI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_AI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_AI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_AI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupAI.
     * @details Binds every operation to Ros1Dobot_bringupAIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupAIBinding> Ros1Dobot_bringupAIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupAI.
     * @details Binds every operation to Ros1Dobot_bringupAIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupAIBinding> Ros1Dobot_bringupAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupAO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_AO_call
     */
    struct Ros1Dobot_bringupAOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAORequest>
         */
        typedef Ros1Dobot_bringupAORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAOResponse>
         */
        typedef Ros1Dobot_bringupAOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupAO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_AO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupAO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_AO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_AO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupAO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_AO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupAO.
     * @details Binds every operation to Ros1Dobot_bringupAOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupAOBinding> Ros1Dobot_bringupAOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupAO.
     * @details Binds every operation to Ros1Dobot_bringupAOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupAOBinding> Ros1Dobot_bringupAOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_AOEXECUTE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupAOExecute.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_AOExecute_call
     */
    struct Ros1Dobot_bringupAOExecuteBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupAOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAOExecuteRequest>
         */
        typedef Ros1Dobot_bringupAOExecuteRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupAOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAOExecuteResponse>
         */
        typedef Ros1Dobot_bringupAOExecuteResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupAOExecute request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_AOExecute_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AOExecute_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupAOExecute request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_AOExecute_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_AOExecute_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupAOExecute ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_AOExecute_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AOExecute_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupAOExecute.
     * @details Binds every operation to Ros1Dobot_bringupAOExecuteBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupAOExecuteBinding> Ros1Dobot_bringupAOExecuteClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupAOExecute.
     * @details Binds every operation to Ros1Dobot_bringupAOExecuteBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupAOExecuteBinding> Ros1Dobot_bringupAOExecuteServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupAccJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_AccJ_call
     */
    struct Ros1Dobot_bringupAccJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupAccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAccJRequest>
         */
        typedef Ros1Dobot_bringupAccJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupAccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAccJResponse>
         */
        typedef Ros1Dobot_bringupAccJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupAccJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_AccJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AccJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupAccJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_AccJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_AccJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupAccJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_AccJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AccJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupAccJ.
     * @details Binds every operation to Ros1Dobot_bringupAccJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupAccJBinding> Ros1Dobot_bringupAccJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupAccJ.
     * @details Binds every operation to Ros1Dobot_bringupAccJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupAccJBinding> Ros1Dobot_bringupAccJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ACCL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupAccL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_AccL_call
     */
    struct Ros1Dobot_bringupAccLBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupAccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAccLRequest>
         */
        typedef Ros1Dobot_bringupAccLRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupAccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupAccLResponse>
         */
        typedef Ros1Dobot_bringupAccLResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupAccL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_AccL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AccL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupAccL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_AccL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_AccL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupAccL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_AccL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_AccL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupAccL.
     * @details Binds every operation to Ros1Dobot_bringupAccLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupAccLBinding> Ros1Dobot_bringupAccLClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupAccL.
     * @details Binds every operation to Ros1Dobot_bringupAccLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupAccLBinding> Ros1Dobot_bringupAccLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARC 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupArc.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Arc_call
     */
    struct Ros1Dobot_bringupArcBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupArc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupArcRequest>
         */
        typedef Ros1Dobot_bringupArcRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupArc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupArcResponse>
         */
        typedef Ros1Dobot_bringupArcResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupArc request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Arc_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Arc_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupArc request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Arc_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Arc_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupArc ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Arc_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Arc_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupArc.
     * @details Binds every operation to Ros1Dobot_bringupArcBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupArcBinding> Ros1Dobot_bringupArcClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupArc.
     * @details Binds every operation to Ros1Dobot_bringupArcBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupArcBinding> Ros1Dobot_bringupArcServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ARCH 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupArch.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Arch_call
     */
    struct Ros1Dobot_bringupArchBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupArch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupArchRequest>
         */
        typedef Ros1Dobot_bringupArchRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupArch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupArchResponse>
         */
        typedef Ros1Dobot_bringupArchResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupArch request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Arch_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Arch_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupArch request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Arch_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Arch_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupArch ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Arch_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Arch_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupArch.
     * @details Binds every operation to Ros1Dobot_bringupArchBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupArchBinding> Ros1Dobot_bringupArchClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupArch.
     * @details Binds every operation to Ros1Dobot_bringupArchBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupArchBinding> Ros1Dobot_bringupArchServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_BRAKECONTROL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupBrakeControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_BrakeControl_call
     */
    struct Ros1Dobot_bringupBrakeControlBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupBrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupBrakeControlRequest>
         */
        typedef Ros1Dobot_bringupBrakeControlRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupBrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupBrakeControlResponse>
         */
        typedef Ros1Dobot_bringupBrakeControlResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupBrakeControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_BrakeControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_BrakeControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupBrakeControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_BrakeControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_BrakeControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupBrakeControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_BrakeControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_BrakeControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupBrakeControl.
     * @details Binds every operation to Ros1Dobot_bringupBrakeControlBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupBrakeControlBinding> Ros1Dobot_bringupBrakeControlClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupBrakeControl.
     * @details Binds every operation to Ros1Dobot_bringupBrakeControlBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupBrakeControlBinding> Ros1Dobot_bringupBrakeControlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupCP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_CP_call
     */
    struct Ros1Dobot_bringupCPBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupCP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupCPRequest>
         */
        typedef Ros1Dobot_bringupCPRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupCP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupCPResponse>
         */
        typedef Ros1Dobot_bringupCPResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupCP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_CP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_CP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupCP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_CP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_CP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupCP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_CP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_CP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupCP.
     * @details Binds every operation to Ros1Dobot_bringupCPBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupCPBinding> Ros1Dobot_bringupCPClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupCP.
     * @details Binds every operation to Ros1Dobot_bringupCPBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupCPBinding> Ros1Dobot_bringupCPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CIRCLE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupCircle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Circle_call
     */
    struct Ros1Dobot_bringupCircleBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupCircleRequest>
         */
        typedef Ros1Dobot_bringupCircleRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupCircleResponse>
         */
        typedef Ros1Dobot_bringupCircleResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupCircle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Circle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Circle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupCircle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Circle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Circle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupCircle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Circle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Circle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupCircle.
     * @details Binds every operation to Ros1Dobot_bringupCircleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupCircleBinding> Ros1Dobot_bringupCircleClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupCircle.
     * @details Binds every operation to Ros1Dobot_bringupCircleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupCircleBinding> Ros1Dobot_bringupCircleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CLEARERROR 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupClearError.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ClearError_call
     */
    struct Ros1Dobot_bringupClearErrorBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupClearErrorRequest>
         */
        typedef Ros1Dobot_bringupClearErrorRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupClearErrorResponse>
         */
        typedef Ros1Dobot_bringupClearErrorResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupClearError request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ClearError_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ClearError_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupClearError request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ClearError_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ClearError_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupClearError ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ClearError_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ClearError_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupClearError.
     * @details Binds every operation to Ros1Dobot_bringupClearErrorBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupClearErrorBinding> Ros1Dobot_bringupClearErrorClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupClearError.
     * @details Binds every operation to Ros1Dobot_bringupClearErrorBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupClearErrorBinding> Ros1Dobot_bringupClearErrorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUESCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupContinueScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ContinueScript_call
     */
    struct Ros1Dobot_bringupContinueScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupContinueScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupContinueScriptRequest>
         */
        typedef Ros1Dobot_bringupContinueScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupContinueScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupContinueScriptResponse>
         */
        typedef Ros1Dobot_bringupContinueScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupContinueScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ContinueScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ContinueScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupContinueScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ContinueScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ContinueScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupContinueScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ContinueScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ContinueScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupContinueScript.
     * @details Binds every operation to Ros1Dobot_bringupContinueScriptBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupContinueScriptBinding> Ros1Dobot_bringupContinueScriptClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupContinueScript.
     * @details Binds every operation to Ros1Dobot_bringupContinueScriptBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupContinueScriptBinding> Ros1Dobot_bringupContinueScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_CONTINUES 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupContinues.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Continues_call
     */
    struct Ros1Dobot_bringupContinuesBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupContinues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupContinuesRequest>
         */
        typedef Ros1Dobot_bringupContinuesRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupContinues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupContinuesResponse>
         */
        typedef Ros1Dobot_bringupContinuesResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupContinues request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Continues_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Continues_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupContinues request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Continues_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Continues_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupContinues ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Continues_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Continues_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupContinues.
     * @details Binds every operation to Ros1Dobot_bringupContinuesBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupContinuesBinding> Ros1Dobot_bringupContinuesClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupContinues.
     * @details Binds every operation to Ros1Dobot_bringupContinuesBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupContinuesBinding> Ros1Dobot_bringupContinuesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_DI_call
     */
    struct Ros1Dobot_bringupDIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDIRequest>
         */
        typedef Ros1Dobot_bringupDIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDIResponse>
         */
        typedef Ros1Dobot_bringupDIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_DI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_DI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_DI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_DI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupDI.
     * @details Binds every operation to Ros1Dobot_bringupDIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupDIBinding> Ros1Dobot_bringupDIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupDI.
     * @details Binds every operation to Ros1Dobot_bringupDIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupDIBinding> Ros1Dobot_bringupDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupDIGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_DIGroup_call
     */
    struct Ros1Dobot_bringupDIGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupDIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDIGroupRequest>
         */
        typedef Ros1Dobot_bringupDIGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupDIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDIGroupResponse>
         */
        typedef Ros1Dobot_bringupDIGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupDIGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_DIGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DIGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupDIGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_DIGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_DIGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupDIGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_DIGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DIGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupDIGroup.
     * @details Binds every operation to Ros1Dobot_bringupDIGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupDIGroupBinding> Ros1Dobot_bringupDIGroupClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupDIGroup.
     * @details Binds every operation to Ros1Dobot_bringupDIGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupDIGroupBinding> Ros1Dobot_bringupDIGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_DO_call
     */
    struct Ros1Dobot_bringupDOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDORequest>
         */
        typedef Ros1Dobot_bringupDORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDOResponse>
         */
        typedef Ros1Dobot_bringupDOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_DO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_DO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_DO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_DO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupDO.
     * @details Binds every operation to Ros1Dobot_bringupDOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupDOBinding> Ros1Dobot_bringupDOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupDO.
     * @details Binds every operation to Ros1Dobot_bringupDOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupDOBinding> Ros1Dobot_bringupDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOEXECUTE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupDOExecute.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_DOExecute_call
     */
    struct Ros1Dobot_bringupDOExecuteBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupDOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDOExecuteRequest>
         */
        typedef Ros1Dobot_bringupDOExecuteRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupDOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDOExecuteResponse>
         */
        typedef Ros1Dobot_bringupDOExecuteResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupDOExecute request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_DOExecute_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DOExecute_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupDOExecute request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_DOExecute_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_DOExecute_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupDOExecute ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_DOExecute_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DOExecute_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupDOExecute.
     * @details Binds every operation to Ros1Dobot_bringupDOExecuteBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupDOExecuteBinding> Ros1Dobot_bringupDOExecuteClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupDOExecute.
     * @details Binds every operation to Ros1Dobot_bringupDOExecuteBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupDOExecuteBinding> Ros1Dobot_bringupDOExecuteServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DOGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupDOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_DOGroup_call
     */
    struct Ros1Dobot_bringupDOGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDOGroupRequest>
         */
        typedef Ros1Dobot_bringupDOGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDOGroupResponse>
         */
        typedef Ros1Dobot_bringupDOGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupDOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_DOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupDOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_DOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_DOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupDOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_DOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupDOGroup.
     * @details Binds every operation to Ros1Dobot_bringupDOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupDOGroupBinding> Ros1Dobot_bringupDOGroupClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupDOGroup.
     * @details Binds every operation to Ros1Dobot_bringupDOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupDOGroupBinding> Ros1Dobot_bringupDOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DIGITALOUTPUTS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupDigitalOutputs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_DigitalOutputs_call
     */
    struct Ros1Dobot_bringupDigitalOutputsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupDigitalOutputs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDigitalOutputsRequest>
         */
        typedef Ros1Dobot_bringupDigitalOutputsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupDigitalOutputs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDigitalOutputsResponse>
         */
        typedef Ros1Dobot_bringupDigitalOutputsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupDigitalOutputs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_DigitalOutputs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DigitalOutputs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupDigitalOutputs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_DigitalOutputs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_DigitalOutputs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupDigitalOutputs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_DigitalOutputs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DigitalOutputs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupDigitalOutputs.
     * @details Binds every operation to Ros1Dobot_bringupDigitalOutputsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupDigitalOutputsBinding> Ros1Dobot_bringupDigitalOutputsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupDigitalOutputs.
     * @details Binds every operation to Ros1Dobot_bringupDigitalOutputsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupDigitalOutputsBinding> Ros1Dobot_bringupDigitalOutputsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_DISABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupDisableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_DisableRobot_call
     */
    struct Ros1Dobot_bringupDisableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupDisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDisableRobotRequest>
         */
        typedef Ros1Dobot_bringupDisableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupDisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupDisableRobotResponse>
         */
        typedef Ros1Dobot_bringupDisableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupDisableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_DisableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DisableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupDisableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_DisableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_DisableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupDisableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_DisableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_DisableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupDisableRobot.
     * @details Binds every operation to Ros1Dobot_bringupDisableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupDisableRobotBinding> Ros1Dobot_bringupDisableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupDisableRobot.
     * @details Binds every operation to Ros1Dobot_bringupDisableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupDisableRobotBinding> Ros1Dobot_bringupDisableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_EMERGENCYSTOP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupEmergencyStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_EmergencyStop_call
     */
    struct Ros1Dobot_bringupEmergencyStopBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupEmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupEmergencyStopRequest>
         */
        typedef Ros1Dobot_bringupEmergencyStopRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupEmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupEmergencyStopResponse>
         */
        typedef Ros1Dobot_bringupEmergencyStopResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupEmergencyStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_EmergencyStop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_EmergencyStop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupEmergencyStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_EmergencyStop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_EmergencyStop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupEmergencyStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_EmergencyStop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_EmergencyStop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupEmergencyStop.
     * @details Binds every operation to Ros1Dobot_bringupEmergencyStopBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupEmergencyStopBinding> Ros1Dobot_bringupEmergencyStopClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupEmergencyStop.
     * @details Binds every operation to Ros1Dobot_bringupEmergencyStopBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupEmergencyStopBinding> Ros1Dobot_bringupEmergencyStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ENABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupEnableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_EnableRobot_call
     */
    struct Ros1Dobot_bringupEnableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupEnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupEnableRobotRequest>
         */
        typedef Ros1Dobot_bringupEnableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupEnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupEnableRobotResponse>
         */
        typedef Ros1Dobot_bringupEnableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupEnableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_EnableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_EnableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupEnableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_EnableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_EnableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupEnableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_EnableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_EnableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupEnableRobot.
     * @details Binds every operation to Ros1Dobot_bringupEnableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupEnableRobotBinding> Ros1Dobot_bringupEnableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupEnableRobot.
     * @details Binds every operation to Ros1Dobot_bringupEnableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupEnableRobotBinding> Ros1Dobot_bringupEnableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETANGLE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetAngle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetAngle_call
     */
    struct Ros1Dobot_bringupGetAngleBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetAngleRequest>
         */
        typedef Ros1Dobot_bringupGetAngleRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetAngleResponse>
         */
        typedef Ros1Dobot_bringupGetAngleResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetAngle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetAngle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetAngle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetAngle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetAngle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetAngle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetAngle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetAngle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetAngle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetAngle.
     * @details Binds every operation to Ros1Dobot_bringupGetAngleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetAngleBinding> Ros1Dobot_bringupGetAngleClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetAngle.
     * @details Binds every operation to Ros1Dobot_bringupGetAngleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetAngleBinding> Ros1Dobot_bringupGetAngleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetCoils_call
     */
    struct Ros1Dobot_bringupGetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetCoilsRequest>
         */
        typedef Ros1Dobot_bringupGetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetCoilsResponse>
         */
        typedef Ros1Dobot_bringupGetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetCoils.
     * @details Binds every operation to Ros1Dobot_bringupGetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetCoilsBinding> Ros1Dobot_bringupGetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetCoils.
     * @details Binds every operation to Ros1Dobot_bringupGetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetCoilsBinding> Ros1Dobot_bringupGetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETERRORID 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetErrorID.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetErrorID_call
     */
    struct Ros1Dobot_bringupGetErrorIDBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetErrorIDRequest>
         */
        typedef Ros1Dobot_bringupGetErrorIDRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetErrorIDResponse>
         */
        typedef Ros1Dobot_bringupGetErrorIDResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetErrorID request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetErrorID_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetErrorID_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetErrorID request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetErrorID_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetErrorID_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetErrorID ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetErrorID_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetErrorID_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetErrorID.
     * @details Binds every operation to Ros1Dobot_bringupGetErrorIDBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetErrorIDBinding> Ros1Dobot_bringupGetErrorIDClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetErrorID.
     * @details Binds every operation to Ros1Dobot_bringupGetErrorIDBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetErrorIDBinding> Ros1Dobot_bringupGetErrorIDServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetHoldRegs_call
     */
    struct Ros1Dobot_bringupGetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetHoldRegsRequest>
         */
        typedef Ros1Dobot_bringupGetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetHoldRegsResponse>
         */
        typedef Ros1Dobot_bringupGetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetHoldRegs.
     * @details Binds every operation to Ros1Dobot_bringupGetHoldRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetHoldRegsBinding> Ros1Dobot_bringupGetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetHoldRegs.
     * @details Binds every operation to Ros1Dobot_bringupGetHoldRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetHoldRegsBinding> Ros1Dobot_bringupGetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINBITS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetInBits.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetInBits_call
     */
    struct Ros1Dobot_bringupGetInBitsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetInBitsRequest>
         */
        typedef Ros1Dobot_bringupGetInBitsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetInBitsResponse>
         */
        typedef Ros1Dobot_bringupGetInBitsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetInBits request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetInBits_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetInBits_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetInBits request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetInBits_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetInBits_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetInBits ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetInBits_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetInBits_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetInBits.
     * @details Binds every operation to Ros1Dobot_bringupGetInBitsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetInBitsBinding> Ros1Dobot_bringupGetInBitsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetInBits.
     * @details Binds every operation to Ros1Dobot_bringupGetInBitsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetInBitsBinding> Ros1Dobot_bringupGetInBitsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETINREGS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetInRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetInRegs_call
     */
    struct Ros1Dobot_bringupGetInRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetInRegsRequest>
         */
        typedef Ros1Dobot_bringupGetInRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetInRegsResponse>
         */
        typedef Ros1Dobot_bringupGetInRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetInRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetInRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetInRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetInRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetInRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetInRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetInRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetInRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetInRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetInRegs.
     * @details Binds every operation to Ros1Dobot_bringupGetInRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetInRegsBinding> Ros1Dobot_bringupGetInRegsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetInRegs.
     * @details Binds every operation to Ros1Dobot_bringupGetInRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetInRegsBinding> Ros1Dobot_bringupGetInRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPATHSTARTPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetPathStartPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetPathStartPose_call
     */
    struct Ros1Dobot_bringupGetPathStartPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetPathStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetPathStartPoseRequest>
         */
        typedef Ros1Dobot_bringupGetPathStartPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetPathStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetPathStartPoseResponse>
         */
        typedef Ros1Dobot_bringupGetPathStartPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetPathStartPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetPathStartPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetPathStartPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetPathStartPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetPathStartPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetPathStartPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetPathStartPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetPathStartPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetPathStartPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetPathStartPose.
     * @details Binds every operation to Ros1Dobot_bringupGetPathStartPoseBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetPathStartPoseBinding> Ros1Dobot_bringupGetPathStartPoseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetPathStartPose.
     * @details Binds every operation to Ros1Dobot_bringupGetPathStartPoseBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetPathStartPoseBinding> Ros1Dobot_bringupGetPathStartPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetPose_call
     */
    struct Ros1Dobot_bringupGetPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetPoseRequest>
         */
        typedef Ros1Dobot_bringupGetPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetPoseResponse>
         */
        typedef Ros1Dobot_bringupGetPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetPose.
     * @details Binds every operation to Ros1Dobot_bringupGetPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetPoseBinding> Ros1Dobot_bringupGetPoseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetPose.
     * @details Binds every operation to Ros1Dobot_bringupGetPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetPoseBinding> Ros1Dobot_bringupGetPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETSIXFORCEDATA 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetSixForceData.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetSixForceData_call
     */
    struct Ros1Dobot_bringupGetSixForceDataBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetSixForceData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetSixForceDataRequest>
         */
        typedef Ros1Dobot_bringupGetSixForceDataRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetSixForceData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetSixForceDataResponse>
         */
        typedef Ros1Dobot_bringupGetSixForceDataResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetSixForceData request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetSixForceData_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetSixForceData_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetSixForceData request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetSixForceData_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetSixForceData_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetSixForceData ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetSixForceData_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetSixForceData_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetSixForceData.
     * @details Binds every operation to Ros1Dobot_bringupGetSixForceDataBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetSixForceDataBinding> Ros1Dobot_bringupGetSixForceDataClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetSixForceData.
     * @details Binds every operation to Ros1Dobot_bringupGetSixForceDataBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetSixForceDataBinding> Ros1Dobot_bringupGetSixForceDataServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTERMINAL485 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetTerminal485.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetTerminal485_call
     */
    struct Ros1Dobot_bringupGetTerminal485Binding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetTerminal485Request>
         */
        typedef Ros1Dobot_bringupGetTerminal485Request Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetTerminal485Response>
         */
        typedef Ros1Dobot_bringupGetTerminal485Response Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetTerminal485 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetTerminal485_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetTerminal485_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetTerminal485 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetTerminal485_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetTerminal485_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetTerminal485 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetTerminal485_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetTerminal485_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetTerminal485.
     * @details Binds every operation to Ros1Dobot_bringupGetTerminal485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetTerminal485Binding> Ros1Dobot_bringupGetTerminal485Client;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetTerminal485.
     * @details Binds every operation to Ros1Dobot_bringupGetTerminal485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetTerminal485Binding> Ros1Dobot_bringupGetTerminal485Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_GETTRACESTARTPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupGetTraceStartPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_call
     */
    struct Ros1Dobot_bringupGetTraceStartPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupGetTraceStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetTraceStartPoseRequest>
         */
        typedef Ros1Dobot_bringupGetTraceStartPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupGetTraceStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupGetTraceStartPoseResponse>
         */
        typedef Ros1Dobot_bringupGetTraceStartPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupGetTraceStartPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupGetTraceStartPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupGetTraceStartPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_GetTraceStartPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupGetTraceStartPose.
     * @details Binds every operation to Ros1Dobot_bringupGetTraceStartPoseBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupGetTraceStartPoseBinding> Ros1Dobot_bringupGetTraceStartPoseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupGetTraceStartPose.
     * @details Binds every operation to Ros1Dobot_bringupGetTraceStartPoseBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupGetTraceStartPoseBinding> Ros1Dobot_bringupGetTraceStartPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_HANDLETRAJPOINTS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupHandleTrajPoints.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_call
     */
    struct Ros1Dobot_bringupHandleTrajPointsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupHandleTrajPoints.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupHandleTrajPointsRequest>
         */
        typedef Ros1Dobot_bringupHandleTrajPointsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupHandleTrajPoints.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupHandleTrajPointsResponse>
         */
        typedef Ros1Dobot_bringupHandleTrajPointsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupHandleTrajPoints request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupHandleTrajPoints request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupHandleTrajPoints ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_HandleTrajPoints_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupHandleTrajPoints.
     * @details Binds every operation to Ros1Dobot_bringupHandleTrajPointsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupHandleTrajPointsBinding> Ros1Dobot_bringupHandleTrajPointsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupHandleTrajPoints.
     * @details Binds every operation to Ros1Dobot_bringupHandleTrajPointsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupHandleTrajPointsBinding> Ros1Dobot_bringupHandleTrajPointsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_INVERSESOLUTION 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupInverseSolution.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_InverseSolution_call
     */
    struct Ros1Dobot_bringupInverseSolutionBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupInverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupInverseSolutionRequest>
         */
        typedef Ros1Dobot_bringupInverseSolutionRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupInverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupInverseSolutionResponse>
         */
        typedef Ros1Dobot_bringupInverseSolutionResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupInverseSolution request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_InverseSolution_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_InverseSolution_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupInverseSolution request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_InverseSolution_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_InverseSolution_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupInverseSolution ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_InverseSolution_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_InverseSolution_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupInverseSolution.
     * @details Binds every operation to Ros1Dobot_bringupInverseSolutionBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupInverseSolutionBinding> Ros1Dobot_bringupInverseSolutionClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupInverseSolution.
     * @details Binds every operation to Ros1Dobot_bringupInverseSolutionBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupInverseSolutionBinding> Ros1Dobot_bringupInverseSolutionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JOINTMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupJointMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_JointMovJ_call
     */
    struct Ros1Dobot_bringupJointMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupJointMovJRequest>
         */
        typedef Ros1Dobot_bringupJointMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupJointMovJResponse>
         */
        typedef Ros1Dobot_bringupJointMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupJointMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_JointMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_JointMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupJointMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_JointMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_JointMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupJointMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_JointMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_JointMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupJointMovJ.
     * @details Binds every operation to Ros1Dobot_bringupJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupJointMovJBinding> Ros1Dobot_bringupJointMovJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupJointMovJ.
     * @details Binds every operation to Ros1Dobot_bringupJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupJointMovJBinding> Ros1Dobot_bringupJointMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_JUMP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupJump.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Jump_call
     */
    struct Ros1Dobot_bringupJumpBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupJump.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupJumpRequest>
         */
        typedef Ros1Dobot_bringupJumpRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupJump.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupJumpResponse>
         */
        typedef Ros1Dobot_bringupJumpResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupJump request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Jump_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Jump_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupJump request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Jump_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Jump_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupJump ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Jump_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Jump_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupJump.
     * @details Binds every operation to Ros1Dobot_bringupJumpBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupJumpBinding> Ros1Dobot_bringupJumpClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupJump.
     * @details Binds every operation to Ros1Dobot_bringupJumpBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupJumpBinding> Ros1Dobot_bringupJumpServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LIMZ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupLimZ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_LimZ_call
     */
    struct Ros1Dobot_bringupLimZBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupLimZ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupLimZRequest>
         */
        typedef Ros1Dobot_bringupLimZRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupLimZ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupLimZResponse>
         */
        typedef Ros1Dobot_bringupLimZResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupLimZ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_LimZ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_LimZ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupLimZ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_LimZ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_LimZ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupLimZ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_LimZ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_LimZ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupLimZ.
     * @details Binds every operation to Ros1Dobot_bringupLimZBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupLimZBinding> Ros1Dobot_bringupLimZClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupLimZ.
     * @details Binds every operation to Ros1Dobot_bringupLimZBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupLimZBinding> Ros1Dobot_bringupLimZServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_LOADSWITCH 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupLoadSwitch.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_LoadSwitch_call
     */
    struct Ros1Dobot_bringupLoadSwitchBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupLoadSwitch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupLoadSwitchRequest>
         */
        typedef Ros1Dobot_bringupLoadSwitchRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupLoadSwitch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupLoadSwitchResponse>
         */
        typedef Ros1Dobot_bringupLoadSwitchResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupLoadSwitch request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_LoadSwitch_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_LoadSwitch_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupLoadSwitch request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_LoadSwitch_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_LoadSwitch_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupLoadSwitch ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_LoadSwitch_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_LoadSwitch_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupLoadSwitch.
     * @details Binds every operation to Ros1Dobot_bringupLoadSwitchBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupLoadSwitchBinding> Ros1Dobot_bringupLoadSwitchClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupLoadSwitch.
     * @details Binds every operation to Ros1Dobot_bringupLoadSwitchBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupLoadSwitchBinding> Ros1Dobot_bringupLoadSwitchServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCLOSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupModbusClose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ModbusClose_call
     */
    struct Ros1Dobot_bringupModbusCloseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupModbusCloseRequest>
         */
        typedef Ros1Dobot_bringupModbusCloseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupModbusCloseResponse>
         */
        typedef Ros1Dobot_bringupModbusCloseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupModbusClose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ModbusClose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ModbusClose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupModbusClose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ModbusClose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ModbusClose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupModbusClose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ModbusClose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ModbusClose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupModbusClose.
     * @details Binds every operation to Ros1Dobot_bringupModbusCloseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupModbusCloseBinding> Ros1Dobot_bringupModbusCloseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupModbusClose.
     * @details Binds every operation to Ros1Dobot_bringupModbusCloseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupModbusCloseBinding> Ros1Dobot_bringupModbusCloseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MODBUSCREATE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupModbusCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ModbusCreate_call
     */
    struct Ros1Dobot_bringupModbusCreateBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupModbusCreateRequest>
         */
        typedef Ros1Dobot_bringupModbusCreateRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupModbusCreateResponse>
         */
        typedef Ros1Dobot_bringupModbusCreateResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupModbusCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ModbusCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ModbusCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupModbusCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ModbusCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ModbusCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupModbusCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ModbusCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ModbusCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupModbusCreate.
     * @details Binds every operation to Ros1Dobot_bringupModbusCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupModbusCreateBinding> Ros1Dobot_bringupModbusCreateClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupModbusCreate.
     * @details Binds every operation to Ros1Dobot_bringupModbusCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupModbusCreateBinding> Ros1Dobot_bringupModbusCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_MovJ_call
     */
    struct Ros1Dobot_bringupMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovJRequest>
         */
        typedef Ros1Dobot_bringupMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovJResponse>
         */
        typedef Ros1Dobot_bringupMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_MovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_MovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_MovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupMovJ.
     * @details Binds every operation to Ros1Dobot_bringupMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupMovJBinding> Ros1Dobot_bringupMovJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupMovJ.
     * @details Binds every operation to Ros1Dobot_bringupMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupMovJBinding> Ros1Dobot_bringupMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJEXT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupMovJExt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_MovJExt_call
     */
    struct Ros1Dobot_bringupMovJExtBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupMovJExt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovJExtRequest>
         */
        typedef Ros1Dobot_bringupMovJExtRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupMovJExt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovJExtResponse>
         */
        typedef Ros1Dobot_bringupMovJExtResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupMovJExt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_MovJExt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJExt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupMovJExt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_MovJExt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJExt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupMovJExt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_MovJExt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJExt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupMovJExt.
     * @details Binds every operation to Ros1Dobot_bringupMovJExtBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupMovJExtBinding> Ros1Dobot_bringupMovJExtClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupMovJExt.
     * @details Binds every operation to Ros1Dobot_bringupMovJExtBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupMovJExtBinding> Ros1Dobot_bringupMovJExtServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVJIO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupMovJIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_MovJIO_call
     */
    struct Ros1Dobot_bringupMovJIOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupMovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovJIORequest>
         */
        typedef Ros1Dobot_bringupMovJIORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupMovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovJIOResponse>
         */
        typedef Ros1Dobot_bringupMovJIOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupMovJIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_MovJIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupMovJIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_MovJIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupMovJIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_MovJIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovJIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupMovJIO.
     * @details Binds every operation to Ros1Dobot_bringupMovJIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupMovJIOBinding> Ros1Dobot_bringupMovJIOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupMovJIO.
     * @details Binds every operation to Ros1Dobot_bringupMovJIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupMovJIOBinding> Ros1Dobot_bringupMovJIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupMovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_MovL_call
     */
    struct Ros1Dobot_bringupMovLBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovLRequest>
         */
        typedef Ros1Dobot_bringupMovLRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovLResponse>
         */
        typedef Ros1Dobot_bringupMovLResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupMovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_MovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupMovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_MovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_MovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupMovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_MovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupMovL.
     * @details Binds every operation to Ros1Dobot_bringupMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupMovLBinding> Ros1Dobot_bringupMovLClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupMovL.
     * @details Binds every operation to Ros1Dobot_bringupMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupMovLBinding> Ros1Dobot_bringupMovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVLIO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupMovLIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_MovLIO_call
     */
    struct Ros1Dobot_bringupMovLIOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupMovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovLIORequest>
         */
        typedef Ros1Dobot_bringupMovLIORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupMovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMovLIOResponse>
         */
        typedef Ros1Dobot_bringupMovLIOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupMovLIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_MovLIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovLIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupMovLIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_MovLIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_MovLIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupMovLIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_MovLIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MovLIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupMovLIO.
     * @details Binds every operation to Ros1Dobot_bringupMovLIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupMovLIOBinding> Ros1Dobot_bringupMovLIOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupMovLIO.
     * @details Binds every operation to Ros1Dobot_bringupMovLIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupMovLIOBinding> Ros1Dobot_bringupMovLIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_MOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupMoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_MoveJog_call
     */
    struct Ros1Dobot_bringupMoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMoveJogRequest>
         */
        typedef Ros1Dobot_bringupMoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupMoveJogResponse>
         */
        typedef Ros1Dobot_bringupMoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupMoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_MoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupMoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_MoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_MoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupMoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_MoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_MoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupMoveJog.
     * @details Binds every operation to Ros1Dobot_bringupMoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupMoveJogBinding> Ros1Dobot_bringupMoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupMoveJog.
     * @details Binds every operation to Ros1Dobot_bringupMoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupMoveJogBinding> Ros1Dobot_bringupMoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSESCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupPauseScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_PauseScript_call
     */
    struct Ros1Dobot_bringupPauseScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupPauseScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPauseScriptRequest>
         */
        typedef Ros1Dobot_bringupPauseScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupPauseScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPauseScriptResponse>
         */
        typedef Ros1Dobot_bringupPauseScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupPauseScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_PauseScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PauseScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupPauseScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_PauseScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_PauseScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupPauseScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_PauseScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PauseScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupPauseScript.
     * @details Binds every operation to Ros1Dobot_bringupPauseScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupPauseScriptBinding> Ros1Dobot_bringupPauseScriptClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupPauseScript.
     * @details Binds every operation to Ros1Dobot_bringupPauseScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupPauseScriptBinding> Ros1Dobot_bringupPauseScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAYLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupPayLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_PayLoad_call
     */
    struct Ros1Dobot_bringupPayLoadBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupPayLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPayLoadRequest>
         */
        typedef Ros1Dobot_bringupPayLoadRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupPayLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPayLoadResponse>
         */
        typedef Ros1Dobot_bringupPayLoadResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupPayLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_PayLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PayLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupPayLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_PayLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_PayLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupPayLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_PayLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PayLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupPayLoad.
     * @details Binds every operation to Ros1Dobot_bringupPayLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupPayLoadBinding> Ros1Dobot_bringupPayLoadClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupPayLoad.
     * @details Binds every operation to Ros1Dobot_bringupPayLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupPayLoadBinding> Ros1Dobot_bringupPayLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POSITIVESOLUTION 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupPositiveSolution.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_PositiveSolution_call
     */
    struct Ros1Dobot_bringupPositiveSolutionBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupPositiveSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPositiveSolutionRequest>
         */
        typedef Ros1Dobot_bringupPositiveSolutionRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupPositiveSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPositiveSolutionResponse>
         */
        typedef Ros1Dobot_bringupPositiveSolutionResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupPositiveSolution request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_PositiveSolution_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PositiveSolution_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupPositiveSolution request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_PositiveSolution_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_PositiveSolution_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupPositiveSolution ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_PositiveSolution_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PositiveSolution_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupPositiveSolution.
     * @details Binds every operation to Ros1Dobot_bringupPositiveSolutionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupPositiveSolutionBinding> Ros1Dobot_bringupPositiveSolutionClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupPositiveSolution.
     * @details Binds every operation to Ros1Dobot_bringupPositiveSolutionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupPositiveSolutionBinding> Ros1Dobot_bringupPositiveSolutionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_POWERON 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupPowerOn.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_PowerOn_call
     */
    struct Ros1Dobot_bringupPowerOnBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupPowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPowerOnRequest>
         */
        typedef Ros1Dobot_bringupPowerOnRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupPowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPowerOnResponse>
         */
        typedef Ros1Dobot_bringupPowerOnResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupPowerOn request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_PowerOn_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PowerOn_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupPowerOn request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_PowerOn_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_PowerOn_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupPowerOn ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_PowerOn_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_PowerOn_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupPowerOn.
     * @details Binds every operation to Ros1Dobot_bringupPowerOnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupPowerOnBinding> Ros1Dobot_bringupPowerOnClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupPowerOn.
     * @details Binds every operation to Ros1Dobot_bringupPowerOnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupPowerOnBinding> Ros1Dobot_bringupPowerOnServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELJOINTMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRelJointMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RelJointMovJ_call
     */
    struct Ros1Dobot_bringupRelJointMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelJointMovJRequest>
         */
        typedef Ros1Dobot_bringupRelJointMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelJointMovJResponse>
         */
        typedef Ros1Dobot_bringupRelJointMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRelJointMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RelJointMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelJointMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRelJointMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RelJointMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RelJointMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRelJointMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RelJointMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelJointMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRelJointMovJ.
     * @details Binds every operation to Ros1Dobot_bringupRelJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRelJointMovJBinding> Ros1Dobot_bringupRelJointMovJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRelJointMovJ.
     * @details Binds every operation to Ros1Dobot_bringupRelJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRelJointMovJBinding> Ros1Dobot_bringupRelJointMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRelMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RelMovJ_call
     */
    struct Ros1Dobot_bringupRelMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRelMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovJRequest>
         */
        typedef Ros1Dobot_bringupRelMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRelMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovJResponse>
         */
        typedef Ros1Dobot_bringupRelMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRelMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRelMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRelMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRelMovJ.
     * @details Binds every operation to Ros1Dobot_bringupRelMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRelMovJBinding> Ros1Dobot_bringupRelMovJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRelMovJ.
     * @details Binds every operation to Ros1Dobot_bringupRelMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRelMovJBinding> Ros1Dobot_bringupRelMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRelMovJTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RelMovJTool_call
     */
    struct Ros1Dobot_bringupRelMovJToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovJToolRequest>
         */
        typedef Ros1Dobot_bringupRelMovJToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovJToolResponse>
         */
        typedef Ros1Dobot_bringupRelMovJToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRelMovJTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRelMovJTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRelMovJTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRelMovJTool.
     * @details Binds every operation to Ros1Dobot_bringupRelMovJToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRelMovJToolBinding> Ros1Dobot_bringupRelMovJToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRelMovJTool.
     * @details Binds every operation to Ros1Dobot_bringupRelMovJToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRelMovJToolBinding> Ros1Dobot_bringupRelMovJToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVJUSER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRelMovJUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RelMovJUser_call
     */
    struct Ros1Dobot_bringupRelMovJUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovJUserRequest>
         */
        typedef Ros1Dobot_bringupRelMovJUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovJUserResponse>
         */
        typedef Ros1Dobot_bringupRelMovJUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRelMovJUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRelMovJUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRelMovJUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovJUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovJUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRelMovJUser.
     * @details Binds every operation to Ros1Dobot_bringupRelMovJUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRelMovJUserBinding> Ros1Dobot_bringupRelMovJUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRelMovJUser.
     * @details Binds every operation to Ros1Dobot_bringupRelMovJUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRelMovJUserBinding> Ros1Dobot_bringupRelMovJUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRelMovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RelMovL_call
     */
    struct Ros1Dobot_bringupRelMovLBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRelMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovLRequest>
         */
        typedef Ros1Dobot_bringupRelMovLRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRelMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovLResponse>
         */
        typedef Ros1Dobot_bringupRelMovLResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRelMovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRelMovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRelMovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRelMovL.
     * @details Binds every operation to Ros1Dobot_bringupRelMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRelMovLBinding> Ros1Dobot_bringupRelMovLClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRelMovL.
     * @details Binds every operation to Ros1Dobot_bringupRelMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRelMovLBinding> Ros1Dobot_bringupRelMovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRelMovLTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RelMovLTool_call
     */
    struct Ros1Dobot_bringupRelMovLToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovLToolRequest>
         */
        typedef Ros1Dobot_bringupRelMovLToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovLToolResponse>
         */
        typedef Ros1Dobot_bringupRelMovLToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRelMovLTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovLTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovLTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRelMovLTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovLTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovLTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRelMovLTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovLTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovLTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRelMovLTool.
     * @details Binds every operation to Ros1Dobot_bringupRelMovLToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRelMovLToolBinding> Ros1Dobot_bringupRelMovLToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRelMovLTool.
     * @details Binds every operation to Ros1Dobot_bringupRelMovLToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRelMovLToolBinding> Ros1Dobot_bringupRelMovLToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RELMOVLUSER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRelMovLUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RelMovLUser_call
     */
    struct Ros1Dobot_bringupRelMovLUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovLUserRequest>
         */
        typedef Ros1Dobot_bringupRelMovLUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRelMovLUserResponse>
         */
        typedef Ros1Dobot_bringupRelMovLUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRelMovLUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovLUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovLUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRelMovLUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovLUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovLUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRelMovLUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RelMovLUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RelMovLUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRelMovLUser.
     * @details Binds every operation to Ros1Dobot_bringupRelMovLUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRelMovLUserBinding> Ros1Dobot_bringupRelMovLUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRelMovLUser.
     * @details Binds every operation to Ros1Dobot_bringupRelMovLUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRelMovLUserBinding> Ros1Dobot_bringupRelMovLUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RESETROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupResetRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ResetRobot_call
     */
    struct Ros1Dobot_bringupResetRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupResetRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupResetRobotRequest>
         */
        typedef Ros1Dobot_bringupResetRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupResetRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupResetRobotResponse>
         */
        typedef Ros1Dobot_bringupResetRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupResetRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ResetRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ResetRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupResetRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ResetRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ResetRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupResetRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ResetRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ResetRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupResetRobot.
     * @details Binds every operation to Ros1Dobot_bringupResetRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupResetRobotBinding> Ros1Dobot_bringupResetRobotClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupResetRobot.
     * @details Binds every operation to Ros1Dobot_bringupResetRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupResetRobotBinding> Ros1Dobot_bringupResetRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_ROBOTMODE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRobotMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RobotMode_call
     */
    struct Ros1Dobot_bringupRobotModeBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRobotModeRequest>
         */
        typedef Ros1Dobot_bringupRobotModeRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRobotModeResponse>
         */
        typedef Ros1Dobot_bringupRobotModeResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRobotMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RobotMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RobotMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRobotMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RobotMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RobotMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRobotMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RobotMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RobotMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRobotMode.
     * @details Binds every operation to Ros1Dobot_bringupRobotModeBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRobotModeBinding> Ros1Dobot_bringupRobotModeClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRobotMode.
     * @details Binds every operation to Ros1Dobot_bringupRobotModeBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRobotModeBinding> Ros1Dobot_bringupRobotModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_RUNSCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupRunScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_RunScript_call
     */
    struct Ros1Dobot_bringupRunScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupRunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRunScriptRequest>
         */
        typedef Ros1Dobot_bringupRunScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupRunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupRunScriptResponse>
         */
        typedef Ros1Dobot_bringupRunScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupRunScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_RunScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RunScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupRunScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_RunScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_RunScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupRunScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_RunScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_RunScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupRunScript.
     * @details Binds every operation to Ros1Dobot_bringupRunScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupRunScriptBinding> Ros1Dobot_bringupRunScriptClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupRunScript.
     * @details Binds every operation to Ros1Dobot_bringupRunScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupRunScriptBinding> Ros1Dobot_bringupRunScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupServoJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ServoJ_call
     */
    struct Ros1Dobot_bringupServoJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupServoJRequest>
         */
        typedef Ros1Dobot_bringupServoJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupServoJResponse>
         */
        typedef Ros1Dobot_bringupServoJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupServoJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ServoJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupServoJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ServoJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupServoJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ServoJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupServoJ.
     * @details Binds every operation to Ros1Dobot_bringupServoJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupServoJBinding> Ros1Dobot_bringupServoJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupServoJ.
     * @details Binds every operation to Ros1Dobot_bringupServoJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupServoJBinding> Ros1Dobot_bringupServoJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOJPARAM 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupServoJParam.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ServoJParam_call
     */
    struct Ros1Dobot_bringupServoJParamBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupServoJParam.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupServoJParamRequest>
         */
        typedef Ros1Dobot_bringupServoJParamRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupServoJParam.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupServoJParamResponse>
         */
        typedef Ros1Dobot_bringupServoJParamResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupServoJParam request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ServoJParam_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoJParam_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupServoJParam request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ServoJParam_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoJParam_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupServoJParam ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ServoJParam_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoJParam_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupServoJParam.
     * @details Binds every operation to Ros1Dobot_bringupServoJParamBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupServoJParamBinding> Ros1Dobot_bringupServoJParamClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupServoJParam.
     * @details Binds every operation to Ros1Dobot_bringupServoJParamBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupServoJParamBinding> Ros1Dobot_bringupServoJParamServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SERVOP 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupServoP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ServoP_call
     */
    struct Ros1Dobot_bringupServoPBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupServoPRequest>
         */
        typedef Ros1Dobot_bringupServoPRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupServoPResponse>
         */
        typedef Ros1Dobot_bringupServoPResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupServoP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ServoP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupServoP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ServoP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupServoP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ServoP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ServoP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupServoP.
     * @details Binds every operation to Ros1Dobot_bringupServoPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupServoPBinding> Ros1Dobot_bringupServoPClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupServoP.
     * @details Binds every operation to Ros1Dobot_bringupServoPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupServoPBinding> Ros1Dobot_bringupServoPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETARMORIENTATION 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetArmOrientation.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetArmOrientation_call
     */
    struct Ros1Dobot_bringupSetArmOrientationBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetArmOrientation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetArmOrientationRequest>
         */
        typedef Ros1Dobot_bringupSetArmOrientationRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetArmOrientation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetArmOrientationResponse>
         */
        typedef Ros1Dobot_bringupSetArmOrientationResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetArmOrientation request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetArmOrientation_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetArmOrientation_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetArmOrientation request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetArmOrientation_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetArmOrientation_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetArmOrientation ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetArmOrientation_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetArmOrientation_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetArmOrientation.
     * @details Binds every operation to Ros1Dobot_bringupSetArmOrientationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetArmOrientationBinding> Ros1Dobot_bringupSetArmOrientationClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetArmOrientation.
     * @details Binds every operation to Ros1Dobot_bringupSetArmOrientationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetArmOrientationBinding> Ros1Dobot_bringupSetArmOrientationServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetCoils_call
     */
    struct Ros1Dobot_bringupSetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetCoilsRequest>
         */
        typedef Ros1Dobot_bringupSetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetCoilsResponse>
         */
        typedef Ros1Dobot_bringupSetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetCoils.
     * @details Binds every operation to Ros1Dobot_bringupSetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetCoilsBinding> Ros1Dobot_bringupSetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetCoils.
     * @details Binds every operation to Ros1Dobot_bringupSetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetCoilsBinding> Ros1Dobot_bringupSetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLIDEDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetCollideDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetCollideDrag_call
     */
    struct Ros1Dobot_bringupSetCollideDragBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetCollideDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetCollideDragRequest>
         */
        typedef Ros1Dobot_bringupSetCollideDragRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetCollideDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetCollideDragResponse>
         */
        typedef Ros1Dobot_bringupSetCollideDragResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetCollideDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetCollideDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCollideDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetCollideDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetCollideDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCollideDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetCollideDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetCollideDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCollideDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetCollideDrag.
     * @details Binds every operation to Ros1Dobot_bringupSetCollideDragBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetCollideDragBinding> Ros1Dobot_bringupSetCollideDragClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetCollideDrag.
     * @details Binds every operation to Ros1Dobot_bringupSetCollideDragBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetCollideDragBinding> Ros1Dobot_bringupSetCollideDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETCOLLISIONLEVEL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetCollisionLevel.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_call
     */
    struct Ros1Dobot_bringupSetCollisionLevelBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetCollisionLevelRequest>
         */
        typedef Ros1Dobot_bringupSetCollisionLevelRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetCollisionLevelResponse>
         */
        typedef Ros1Dobot_bringupSetCollisionLevelResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetCollisionLevel request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetCollisionLevel request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetCollisionLevel ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetCollisionLevel_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetCollisionLevel.
     * @details Binds every operation to Ros1Dobot_bringupSetCollisionLevelBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetCollisionLevelBinding> Ros1Dobot_bringupSetCollisionLevelClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetCollisionLevel.
     * @details Binds every operation to Ros1Dobot_bringupSetCollisionLevelBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetCollisionLevelBinding> Ros1Dobot_bringupSetCollisionLevelServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetHoldRegs_call
     */
    struct Ros1Dobot_bringupSetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetHoldRegsRequest>
         */
        typedef Ros1Dobot_bringupSetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetHoldRegsResponse>
         */
        typedef Ros1Dobot_bringupSetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetHoldRegs.
     * @details Binds every operation to Ros1Dobot_bringupSetHoldRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetHoldRegsBinding> Ros1Dobot_bringupSetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetHoldRegs.
     * @details Binds every operation to Ros1Dobot_bringupSetHoldRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetHoldRegsBinding> Ros1Dobot_bringupSetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETOBSTACLEAVOID 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetObstacleAvoid.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_call
     */
    struct Ros1Dobot_bringupSetObstacleAvoidBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetObstacleAvoid.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetObstacleAvoidRequest>
         */
        typedef Ros1Dobot_bringupSetObstacleAvoidRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetObstacleAvoid.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetObstacleAvoidResponse>
         */
        typedef Ros1Dobot_bringupSetObstacleAvoidResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetObstacleAvoid request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetObstacleAvoid request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetObstacleAvoid ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetObstacleAvoid_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetObstacleAvoid.
     * @details Binds every operation to Ros1Dobot_bringupSetObstacleAvoidBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetObstacleAvoidBinding> Ros1Dobot_bringupSetObstacleAvoidClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetObstacleAvoid.
     * @details Binds every operation to Ros1Dobot_bringupSetObstacleAvoidBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetObstacleAvoidBinding> Ros1Dobot_bringupSetObstacleAvoidServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETPAYLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetPayload.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetPayload_call
     */
    struct Ros1Dobot_bringupSetPayloadBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetPayloadRequest>
         */
        typedef Ros1Dobot_bringupSetPayloadRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetPayloadResponse>
         */
        typedef Ros1Dobot_bringupSetPayloadResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetPayload request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetPayload_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetPayload_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetPayload request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetPayload_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetPayload_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetPayload ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetPayload_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetPayload_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetPayload.
     * @details Binds every operation to Ros1Dobot_bringupSetPayloadBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetPayloadBinding> Ros1Dobot_bringupSetPayloadClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetPayload.
     * @details Binds every operation to Ros1Dobot_bringupSetPayloadBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetPayloadBinding> Ros1Dobot_bringupSetPayloadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETSAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetSafeSkin_call
     */
    struct Ros1Dobot_bringupSetSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetSafeSkinRequest>
         */
        typedef Ros1Dobot_bringupSetSafeSkinRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetSafeSkinResponse>
         */
        typedef Ros1Dobot_bringupSetSafeSkinResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetSafeSkin.
     * @details Binds every operation to Ros1Dobot_bringupSetSafeSkinBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetSafeSkinBinding> Ros1Dobot_bringupSetSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetSafeSkin.
     * @details Binds every operation to Ros1Dobot_bringupSetSafeSkinBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetSafeSkinBinding> Ros1Dobot_bringupSetSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINAL485 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetTerminal485.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetTerminal485_call
     */
    struct Ros1Dobot_bringupSetTerminal485Binding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetTerminal485Request>
         */
        typedef Ros1Dobot_bringupSetTerminal485Request Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetTerminal485Response>
         */
        typedef Ros1Dobot_bringupSetTerminal485Response Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetTerminal485 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetTerminal485_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetTerminal485_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetTerminal485 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetTerminal485_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetTerminal485_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetTerminal485 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetTerminal485_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetTerminal485_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetTerminal485.
     * @details Binds every operation to Ros1Dobot_bringupSetTerminal485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetTerminal485Binding> Ros1Dobot_bringupSetTerminal485Client;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetTerminal485.
     * @details Binds every operation to Ros1Dobot_bringupSetTerminal485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetTerminal485Binding> Ros1Dobot_bringupSetTerminal485Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SETTERMINALKEYS 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSetTerminalKeys.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_call
     */
    struct Ros1Dobot_bringupSetTerminalKeysBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSetTerminalKeys.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetTerminalKeysRequest>
         */
        typedef Ros1Dobot_bringupSetTerminalKeysRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSetTerminalKeys.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSetTerminalKeysResponse>
         */
        typedef Ros1Dobot_bringupSetTerminalKeysResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSetTerminalKeys request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSetTerminalKeys request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSetTerminalKeys ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SetTerminalKeys_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSetTerminalKeys.
     * @details Binds every operation to Ros1Dobot_bringupSetTerminalKeysBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSetTerminalKeysBinding> Ros1Dobot_bringupSetTerminalKeysClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSetTerminalKeys.
     * @details Binds every operation to Ros1Dobot_bringupSetTerminalKeysBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSetTerminalKeysBinding> Ros1Dobot_bringupSetTerminalKeysServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDFACTOR 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSpeedFactor.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SpeedFactor_call
     */
    struct Ros1Dobot_bringupSpeedFactorBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSpeedFactorRequest>
         */
        typedef Ros1Dobot_bringupSpeedFactorRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSpeedFactorResponse>
         */
        typedef Ros1Dobot_bringupSpeedFactorResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSpeedFactor request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedFactor_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedFactor_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSpeedFactor request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedFactor_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedFactor_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSpeedFactor ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedFactor_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedFactor_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSpeedFactor.
     * @details Binds every operation to Ros1Dobot_bringupSpeedFactorBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSpeedFactorBinding> Ros1Dobot_bringupSpeedFactorClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSpeedFactor.
     * @details Binds every operation to Ros1Dobot_bringupSpeedFactorBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSpeedFactorBinding> Ros1Dobot_bringupSpeedFactorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDJ 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSpeedJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SpeedJ_call
     */
    struct Ros1Dobot_bringupSpeedJBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSpeedJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSpeedJRequest>
         */
        typedef Ros1Dobot_bringupSpeedJRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSpeedJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSpeedJResponse>
         */
        typedef Ros1Dobot_bringupSpeedJResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSpeedJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSpeedJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSpeedJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSpeedJ.
     * @details Binds every operation to Ros1Dobot_bringupSpeedJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSpeedJBinding> Ros1Dobot_bringupSpeedJClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSpeedJ.
     * @details Binds every operation to Ros1Dobot_bringupSpeedJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSpeedJBinding> Ros1Dobot_bringupSpeedJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SPEEDL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSpeedL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SpeedL_call
     */
    struct Ros1Dobot_bringupSpeedLBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSpeedL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSpeedLRequest>
         */
        typedef Ros1Dobot_bringupSpeedLRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSpeedL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSpeedLResponse>
         */
        typedef Ros1Dobot_bringupSpeedLResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSpeedL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSpeedL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSpeedL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SpeedL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SpeedL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSpeedL.
     * @details Binds every operation to Ros1Dobot_bringupSpeedLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSpeedLBinding> Ros1Dobot_bringupSpeedLClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSpeedL.
     * @details Binds every operation to Ros1Dobot_bringupSpeedLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSpeedLBinding> Ros1Dobot_bringupSpeedLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupStartDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_StartDrag_call
     */
    struct Ros1Dobot_bringupStartDragBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupStartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartDragRequest>
         */
        typedef Ros1Dobot_bringupStartDragRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupStartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartDragResponse>
         */
        typedef Ros1Dobot_bringupStartDragResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupStartDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_StartDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupStartDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_StartDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_StartDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupStartDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_StartDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupStartDrag.
     * @details Binds every operation to Ros1Dobot_bringupStartDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupStartDragBinding> Ros1Dobot_bringupStartDragClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupStartDrag.
     * @details Binds every operation to Ros1Dobot_bringupStartDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupStartDragBinding> Ros1Dobot_bringupStartDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTFCTRACE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupStartFCTrace.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_StartFCTrace_call
     */
    struct Ros1Dobot_bringupStartFCTraceBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupStartFCTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartFCTraceRequest>
         */
        typedef Ros1Dobot_bringupStartFCTraceRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupStartFCTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartFCTraceResponse>
         */
        typedef Ros1Dobot_bringupStartFCTraceResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupStartFCTrace request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_StartFCTrace_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartFCTrace_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupStartFCTrace request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_StartFCTrace_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_StartFCTrace_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupStartFCTrace ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_StartFCTrace_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartFCTrace_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupStartFCTrace.
     * @details Binds every operation to Ros1Dobot_bringupStartFCTraceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupStartFCTraceBinding> Ros1Dobot_bringupStartFCTraceClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupStartFCTrace.
     * @details Binds every operation to Ros1Dobot_bringupStartFCTraceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupStartFCTraceBinding> Ros1Dobot_bringupStartFCTraceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTPATH 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupStartPath.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_StartPath_call
     */
    struct Ros1Dobot_bringupStartPathBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupStartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartPathRequest>
         */
        typedef Ros1Dobot_bringupStartPathRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupStartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartPathResponse>
         */
        typedef Ros1Dobot_bringupStartPathResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupStartPath request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_StartPath_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartPath_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupStartPath request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_StartPath_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_StartPath_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupStartPath ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_StartPath_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartPath_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupStartPath.
     * @details Binds every operation to Ros1Dobot_bringupStartPathBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupStartPathBinding> Ros1Dobot_bringupStartPathClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupStartPath.
     * @details Binds every operation to Ros1Dobot_bringupStartPathBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupStartPathBinding> Ros1Dobot_bringupStartPathServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STARTTRACE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupStartTrace.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_StartTrace_call
     */
    struct Ros1Dobot_bringupStartTraceBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupStartTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartTraceRequest>
         */
        typedef Ros1Dobot_bringupStartTraceRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupStartTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStartTraceResponse>
         */
        typedef Ros1Dobot_bringupStartTraceResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupStartTrace request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_StartTrace_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartTrace_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupStartTrace request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_StartTrace_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_StartTrace_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupStartTrace ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_StartTrace_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StartTrace_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupStartTrace.
     * @details Binds every operation to Ros1Dobot_bringupStartTraceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupStartTraceBinding> Ros1Dobot_bringupStartTraceClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupStartTrace.
     * @details Binds every operation to Ros1Dobot_bringupStartTraceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupStartTraceBinding> Ros1Dobot_bringupStartTraceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupStopDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_StopDrag_call
     */
    struct Ros1Dobot_bringupStopDragBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupStopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStopDragRequest>
         */
        typedef Ros1Dobot_bringupStopDragRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupStopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStopDragResponse>
         */
        typedef Ros1Dobot_bringupStopDragResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupStopDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_StopDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StopDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupStopDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_StopDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_StopDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupStopDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_StopDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StopDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupStopDrag.
     * @details Binds every operation to Ros1Dobot_bringupStopDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupStopDragBinding> Ros1Dobot_bringupStopDragClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupStopDrag.
     * @details Binds every operation to Ros1Dobot_bringupStopDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupStopDragBinding> Ros1Dobot_bringupStopDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPSCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupStopScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_StopScript_call
     */
    struct Ros1Dobot_bringupStopScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupStopScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStopScriptRequest>
         */
        typedef Ros1Dobot_bringupStopScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupStopScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStopScriptResponse>
         */
        typedef Ros1Dobot_bringupStopScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupStopScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_StopScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StopScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupStopScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_StopScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_StopScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupStopScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_StopScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StopScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupStopScript.
     * @details Binds every operation to Ros1Dobot_bringupStopScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupStopScriptBinding> Ros1Dobot_bringupStopScriptClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupStopScript.
     * @details Binds every operation to Ros1Dobot_bringupStopScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupStopScriptBinding> Ros1Dobot_bringupStopScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_STOPMOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupStopmoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_StopmoveJog_call
     */
    struct Ros1Dobot_bringupStopmoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupStopmoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStopmoveJogRequest>
         */
        typedef Ros1Dobot_bringupStopmoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupStopmoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupStopmoveJogResponse>
         */
        typedef Ros1Dobot_bringupStopmoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupStopmoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_StopmoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StopmoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupStopmoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_StopmoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_StopmoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupStopmoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_StopmoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_StopmoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupStopmoveJog.
     * @details Binds every operation to Ros1Dobot_bringupStopmoveJogBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupStopmoveJogBinding> Ros1Dobot_bringupStopmoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupStopmoveJog.
     * @details Binds every operation to Ros1Dobot_bringupStopmoveJogBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupStopmoveJogBinding> Ros1Dobot_bringupStopmoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNC 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSync.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Sync_call
     */
    struct Ros1Dobot_bringupSyncBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSync.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSyncRequest>
         */
        typedef Ros1Dobot_bringupSyncRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSync.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSyncResponse>
         */
        typedef Ros1Dobot_bringupSyncResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSync request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Sync_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Sync_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSync request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Sync_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Sync_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSync ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Sync_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Sync_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSync.
     * @details Binds every operation to Ros1Dobot_bringupSyncBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSyncBinding> Ros1Dobot_bringupSyncClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSync.
     * @details Binds every operation to Ros1Dobot_bringupSyncBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSyncBinding> Ros1Dobot_bringupSyncServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_SYNCALL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupSyncAll.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_SyncAll_call
     */
    struct Ros1Dobot_bringupSyncAllBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupSyncAll.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSyncAllRequest>
         */
        typedef Ros1Dobot_bringupSyncAllRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupSyncAll.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupSyncAllResponse>
         */
        typedef Ros1Dobot_bringupSyncAllResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupSyncAll request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_SyncAll_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SyncAll_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupSyncAll request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_SyncAll_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_SyncAll_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupSyncAll ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_SyncAll_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_SyncAll_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupSyncAll.
     * @details Binds every operation to Ros1Dobot_bringupSyncAllBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupSyncAllBinding> Ros1Dobot_bringupSyncAllClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupSyncAll.
     * @details Binds every operation to Ros1Dobot_bringupSyncAllBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupSyncAllBinding> Ros1Dobot_bringupSyncAllServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEED 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupTCPSpeed.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_TCPSpeed_call
     */
    struct Ros1Dobot_bringupTCPSpeedBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupTCPSpeed.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTCPSpeedRequest>
         */
        typedef Ros1Dobot_bringupTCPSpeedRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupTCPSpeed.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTCPSpeedResponse>
         */
        typedef Ros1Dobot_bringupTCPSpeedResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupTCPSpeed request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_TCPSpeed_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TCPSpeed_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupTCPSpeed request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_TCPSpeed_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_TCPSpeed_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupTCPSpeed ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_TCPSpeed_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TCPSpeed_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupTCPSpeed.
     * @details Binds every operation to Ros1Dobot_bringupTCPSpeedBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupTCPSpeedBinding> Ros1Dobot_bringupTCPSpeedClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupTCPSpeed.
     * @details Binds every operation to Ros1Dobot_bringupTCPSpeedBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupTCPSpeedBinding> Ros1Dobot_bringupTCPSpeedServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPSPEEDEND 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupTCPSpeedEnd.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_call
     */
    struct Ros1Dobot_bringupTCPSpeedEndBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupTCPSpeedEnd.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTCPSpeedEndRequest>
         */
        typedef Ros1Dobot_bringupTCPSpeedEndRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupTCPSpeedEnd.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTCPSpeedEndResponse>
         */
        typedef Ros1Dobot_bringupTCPSpeedEndResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupTCPSpeedEnd request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupTCPSpeedEnd request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupTCPSpeedEnd ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TCPSpeedEnd_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupTCPSpeedEnd.
     * @details Binds every operation to Ros1Dobot_bringupTCPSpeedEndBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupTCPSpeedEndBinding> Ros1Dobot_bringupTCPSpeedEndClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupTCPSpeedEnd.
     * @details Binds every operation to Ros1Dobot_bringupTCPSpeedEndBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupTCPSpeedEndBinding> Ros1Dobot_bringupTCPSpeedEndServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPDASHBOARD 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupTcpDashboard.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_TcpDashboard_call
     */
    struct Ros1Dobot_bringupTcpDashboardBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupTcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTcpDashboardRequest>
         */
        typedef Ros1Dobot_bringupTcpDashboardRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupTcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTcpDashboardResponse>
         */
        typedef Ros1Dobot_bringupTcpDashboardResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupTcpDashboard request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_TcpDashboard_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TcpDashboard_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupTcpDashboard request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_TcpDashboard_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_TcpDashboard_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupTcpDashboard ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_TcpDashboard_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TcpDashboard_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupTcpDashboard.
     * @details Binds every operation to Ros1Dobot_bringupTcpDashboardBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupTcpDashboardBinding> Ros1Dobot_bringupTcpDashboardClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupTcpDashboard.
     * @details Binds every operation to Ros1Dobot_bringupTcpDashboardBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupTcpDashboardBinding> Ros1Dobot_bringupTcpDashboardServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TCPREALDATA 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupTcpRealData.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_TcpRealData_call
     */
    struct Ros1Dobot_bringupTcpRealDataBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupTcpRealData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTcpRealDataRequest>
         */
        typedef Ros1Dobot_bringupTcpRealDataRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupTcpRealData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupTcpRealDataResponse>
         */
        typedef Ros1Dobot_bringupTcpRealDataResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupTcpRealData request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_TcpRealData_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TcpRealData_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupTcpRealData request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_TcpRealData_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_TcpRealData_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupTcpRealData ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_TcpRealData_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_TcpRealData_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupTcpRealData.
     * @details Binds every operation to Ros1Dobot_bringupTcpRealDataBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupTcpRealDataBinding> Ros1Dobot_bringupTcpRealDataClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupTcpRealData.
     * @details Binds every operation to Ros1Dobot_bringupTcpRealDataBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupTcpRealDataBinding> Ros1Dobot_bringupTcpRealDataServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOL 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Tool_call
     */
    struct Ros1Dobot_bringupToolBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolRequest>
         */
        typedef Ros1Dobot_bringupToolRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolResponse>
         */
        typedef Ros1Dobot_bringupToolResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Tool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Tool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Tool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Tool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Tool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Tool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupTool.
     * @details Binds every operation to Ros1Dobot_bringupToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupToolBinding> Ros1Dobot_bringupToolClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupTool.
     * @details Binds every operation to Ros1Dobot_bringupToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupToolBinding> Ros1Dobot_bringupToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLAI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupToolAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ToolAI_call
     */
    struct Ros1Dobot_bringupToolAIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolAIRequest>
         */
        typedef Ros1Dobot_bringupToolAIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolAIResponse>
         */
        typedef Ros1Dobot_bringupToolAIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupToolAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ToolAI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolAI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupToolAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ToolAI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolAI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupToolAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ToolAI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolAI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupToolAI.
     * @details Binds every operation to Ros1Dobot_bringupToolAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupToolAIBinding> Ros1Dobot_bringupToolAIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupToolAI.
     * @details Binds every operation to Ros1Dobot_bringupToolAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupToolAIBinding> Ros1Dobot_bringupToolAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDI 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupToolDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ToolDI_call
     */
    struct Ros1Dobot_bringupToolDIBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolDIRequest>
         */
        typedef Ros1Dobot_bringupToolDIRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolDIResponse>
         */
        typedef Ros1Dobot_bringupToolDIResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupToolDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupToolDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupToolDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupToolDI.
     * @details Binds every operation to Ros1Dobot_bringupToolDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupToolDIBinding> Ros1Dobot_bringupToolDIClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupToolDI.
     * @details Binds every operation to Ros1Dobot_bringupToolDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupToolDIBinding> Ros1Dobot_bringupToolDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDO 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupToolDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ToolDO_call
     */
    struct Ros1Dobot_bringupToolDOBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolDORequest>
         */
        typedef Ros1Dobot_bringupToolDORequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolDOResponse>
         */
        typedef Ros1Dobot_bringupToolDOResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupToolDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupToolDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupToolDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupToolDO.
     * @details Binds every operation to Ros1Dobot_bringupToolDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupToolDOBinding> Ros1Dobot_bringupToolDOClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupToolDO.
     * @details Binds every operation to Ros1Dobot_bringupToolDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupToolDOBinding> Ros1Dobot_bringupToolDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_TOOLDOEXECUTE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupToolDOExecute.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_ToolDOExecute_call
     */
    struct Ros1Dobot_bringupToolDOExecuteBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupToolDOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolDOExecuteRequest>
         */
        typedef Ros1Dobot_bringupToolDOExecuteRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupToolDOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupToolDOExecuteResponse>
         */
        typedef Ros1Dobot_bringupToolDOExecuteResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupToolDOExecute request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDOExecute_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDOExecute_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupToolDOExecute request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDOExecute_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDOExecute_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupToolDOExecute ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_ToolDOExecute_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_ToolDOExecute_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupToolDOExecute.
     * @details Binds every operation to Ros1Dobot_bringupToolDOExecuteBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupToolDOExecuteBinding> Ros1Dobot_bringupToolDOExecuteClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupToolDOExecute.
     * @details Binds every operation to Ros1Dobot_bringupToolDOExecuteBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupToolDOExecuteBinding> Ros1Dobot_bringupToolDOExecuteServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_USER 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_User_call
     */
    struct Ros1Dobot_bringupUserBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupUserRequest>
         */
        typedef Ros1Dobot_bringupUserRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupUserResponse>
         */
        typedef Ros1Dobot_bringupUserResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_User_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_User_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_User_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_User_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_User_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_User_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupUser.
     * @details Binds every operation to Ros1Dobot_bringupUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupUserBinding> Ros1Dobot_bringupUserClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupUser.
     * @details Binds every operation to Ros1Dobot_bringupUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupUserBinding> Ros1Dobot_bringupUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_WAIT 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupWait.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_Wait_call
     */
    struct Ros1Dobot_bringupWaitBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupWait.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupWaitRequest>
         */
        typedef Ros1Dobot_bringupWaitRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupWait.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupWaitResponse>
         */
        typedef Ros1Dobot_bringupWaitResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupWait request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_Wait_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Wait_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupWait request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_Wait_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_Wait_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupWait ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_Wait_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_Wait_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupWait.
     * @details Binds every operation to Ros1Dobot_bringupWaitBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupWaitBinding> Ros1Dobot_bringupWaitClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupWait.
     * @details Binds every operation to Ros1Dobot_bringupWaitBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupWaitBinding> Ros1Dobot_bringupWaitServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_DOBOT_BRINGUP_PAUSE 1

    /**
     * @brief Exact C operation binding for Ros1Dobot_bringupPause.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_dobot_bringup_pause_call
     */
    struct Ros1Dobot_bringupPauseBinding
    {
        /**
         * @brief Complete request record for Ros1Dobot_bringupPause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPauseRequest>
         */
        typedef Ros1Dobot_bringupPauseRequest Request;
        /**
         * @brief Complete response record for Ros1Dobot_bringupPause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Dobot_bringupPauseResponse>
         */
        typedef Ros1Dobot_bringupPauseResponse Response;

        /**
         * @brief Issue one complete Ros1Dobot_bringupPause request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_dobot_bringup_pause_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_dobot_bringup_pause_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Dobot_bringupPause request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_dobot_bringup_pause_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_dobot_bringup_pause_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Dobot_bringupPause ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_dobot_bringup_pause_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_dobot_bringup_pause_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Dobot_bringupPause.
     * @details Binds every operation to Ros1Dobot_bringupPauseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Dobot_bringupPauseBinding> Ros1Dobot_bringupPauseClient;
    /**
     * @brief Owning typed service server for Ros1Dobot_bringupPause.
     * @details Binds every operation to Ros1Dobot_bringupPauseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Dobot_bringupPauseBinding> Ros1Dobot_bringupPauseServer;
#endif
}  // namespace uwvm_custom
