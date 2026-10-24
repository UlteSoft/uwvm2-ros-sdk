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
#include <dobot/c/ros2/dobot-ros2-v4-complete/bounded_interfaces.h>
#include <dobot/cpp/ros2/dobot-ros2-v4-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_AI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_AI 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AI_call
     */
    struct Ros2Dobot_msgs_v4SrvAIBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAI_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvAI_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAI_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvAI_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvAI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvAIBinding> Ros2Dobot_msgs_v4SrvAIClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvAI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvAIBinding> Ros2Dobot_msgs_v4SrvAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_AO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_AO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvAO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AO_call
     */
    struct Ros2Dobot_msgs_v4SrvAOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvAO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvAO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvAO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvAO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvAO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvAO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvAOBinding> Ros2Dobot_msgs_v4SrvAOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvAO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvAOBinding> Ros2Dobot_msgs_v4SrvAOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_AOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_AOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvAOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_call
     */
    struct Ros2Dobot_msgs_v4SrvAOInstantBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvAOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAOInstant_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvAOInstant_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvAOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAOInstant_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvAOInstant_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvAOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvAOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvAOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvAOInstant.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvAOInstantBinding> Ros2Dobot_msgs_v4SrvAOInstantClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvAOInstant.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvAOInstantBinding> Ros2Dobot_msgs_v4SrvAOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ACCJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ACCJ 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvAccJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_call
     */
    struct Ros2Dobot_msgs_v4SrvAccJBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvAccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAccJ_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvAccJ_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvAccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAccJ_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvAccJ_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvAccJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvAccJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvAccJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvAccJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAccJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvAccJBinding> Ros2Dobot_msgs_v4SrvAccJClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvAccJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAccJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvAccJBinding> Ros2Dobot_msgs_v4SrvAccJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ACCL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ACCL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvAccL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_call
     */
    struct Ros2Dobot_msgs_v4SrvAccLBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvAccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAccL_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvAccL_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvAccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvAccL_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvAccL_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvAccL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvAccL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvAccL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvAccL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAccLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvAccLBinding> Ros2Dobot_msgs_v4SrvAccLClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvAccL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvAccLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvAccLBinding> Ros2Dobot_msgs_v4SrvAccLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ARC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ARC 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvArc.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_call
     */
    struct Ros2Dobot_msgs_v4SrvArcBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvArc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvArc_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvArc_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvArc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvArc_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvArc_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvArc request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvArc request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvArc ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvArc.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvArcBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvArcBinding> Ros2Dobot_msgs_v4SrvArcClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvArc.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvArcBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvArcBinding> Ros2Dobot_msgs_v4SrvArcServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_BRAKECONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_BRAKECONTROL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvBrakeControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_call
     */
    struct Ros2Dobot_msgs_v4SrvBrakeControlBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvBrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvBrakeControl_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvBrakeControl_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvBrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvBrakeControl_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvBrakeControl_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvBrakeControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvBrakeControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvBrakeControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvBrakeControl.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvBrakeControlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvBrakeControlBinding> Ros2Dobot_msgs_v4SrvBrakeControlClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvBrakeControl.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvBrakeControlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvBrakeControlBinding> Ros2Dobot_msgs_v4SrvBrakeControlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CP 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvCP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CP_call
     */
    struct Ros2Dobot_msgs_v4SrvCPBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvCP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCP_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvCP_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvCP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCP_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvCP_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvCP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvCP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvCP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvCP.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvCPBinding> Ros2Dobot_msgs_v4SrvCPClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvCP.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvCPBinding> Ros2Dobot_msgs_v4SrvCPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CALCTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CALCTOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvCalcTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_call
     */
    struct Ros2Dobot_msgs_v4SrvCalcToolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvCalcTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCalcTool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvCalcTool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvCalcTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCalcTool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvCalcTool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvCalcTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvCalcTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvCalcTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvCalcTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCalcToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvCalcToolBinding> Ros2Dobot_msgs_v4SrvCalcToolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvCalcTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCalcToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvCalcToolBinding> Ros2Dobot_msgs_v4SrvCalcToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CALCUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CALCUSER 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvCalcUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_call
     */
    struct Ros2Dobot_msgs_v4SrvCalcUserBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvCalcUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCalcUser_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvCalcUser_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvCalcUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCalcUser_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvCalcUser_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvCalcUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvCalcUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvCalcUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvCalcUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCalcUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvCalcUserBinding> Ros2Dobot_msgs_v4SrvCalcUserClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvCalcUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCalcUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvCalcUserBinding> Ros2Dobot_msgs_v4SrvCalcUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CHECKODDMOVC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CHECKODDMOVC 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvCheckOddMovC.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_call
     */
    struct Ros2Dobot_msgs_v4SrvCheckOddMovCBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvCheckOddMovC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCheckOddMovC_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvCheckOddMovC_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvCheckOddMovC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCheckOddMovC_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvCheckOddMovC_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvCheckOddMovC request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvCheckOddMovC request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvCheckOddMovC ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvCheckOddMovC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCheckOddMovCBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvCheckOddMovCBinding> Ros2Dobot_msgs_v4SrvCheckOddMovCClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvCheckOddMovC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCheckOddMovCBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvCheckOddMovCBinding> Ros2Dobot_msgs_v4SrvCheckOddMovCServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CHECKODDMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CHECKODDMOVJ 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvCheckOddMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_call
     */
    struct Ros2Dobot_msgs_v4SrvCheckOddMovJBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvCheckOddMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvCheckOddMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvCheckOddMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvCheckOddMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvCheckOddMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvCheckOddMovJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCheckOddMovJBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvCheckOddMovJBinding> Ros2Dobot_msgs_v4SrvCheckOddMovJClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvCheckOddMovJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCheckOddMovJBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvCheckOddMovJBinding> Ros2Dobot_msgs_v4SrvCheckOddMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CHECKODDMOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CHECKODDMOVL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvCheckOddMovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_call
     */
    struct Ros2Dobot_msgs_v4SrvCheckOddMovLBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvCheckOddMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCheckOddMovL_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvCheckOddMovL_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvCheckOddMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCheckOddMovL_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvCheckOddMovL_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvCheckOddMovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvCheckOddMovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvCheckOddMovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvCheckOddMovL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCheckOddMovLBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvCheckOddMovLBinding> Ros2Dobot_msgs_v4SrvCheckOddMovLClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvCheckOddMovL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCheckOddMovLBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvCheckOddMovLBinding> Ros2Dobot_msgs_v4SrvCheckOddMovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CIRCLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CIRCLE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvCircle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_call
     */
    struct Ros2Dobot_msgs_v4SrvCircleBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCircle_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvCircle_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvCircle_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvCircle_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvCircle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvCircle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvCircle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvCircle.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCircleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvCircleBinding> Ros2Dobot_msgs_v4SrvCircleClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvCircle.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvCircleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvCircleBinding> Ros2Dobot_msgs_v4SrvCircleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CLEARERROR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CLEARERROR 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvClearError.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_call
     */
    struct Ros2Dobot_msgs_v4SrvClearErrorBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvClearError_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvClearError_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvClearError_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvClearError_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvClearError request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvClearError request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvClearError ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvClearError.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvClearErrorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvClearErrorBinding> Ros2Dobot_msgs_v4SrvClearErrorClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvClearError.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvClearErrorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvClearErrorBinding> Ros2Dobot_msgs_v4SrvClearErrorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CONTINUE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_CONTINUE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvContinue.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_call
     */
    struct Ros2Dobot_msgs_v4SrvContinueBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvContinue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvContinue_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvContinue_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvContinue.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvContinue_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvContinue_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvContinue request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvContinue request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvContinue ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvContinue.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvContinueBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvContinueBinding> Ros2Dobot_msgs_v4SrvContinueClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvContinue.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvContinueBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvContinueBinding> Ros2Dobot_msgs_v4SrvContinueServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DI 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DI_call
     */
    struct Ros2Dobot_msgs_v4SrvDIBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDI_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDI_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDI_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDI_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDIBinding> Ros2Dobot_msgs_v4SrvDIClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDIBinding> Ros2Dobot_msgs_v4SrvDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DIGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DIGROUP 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDIGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_call
     */
    struct Ros2Dobot_msgs_v4SrvDIGroupBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDIGroup_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDIGroup_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDIGroup_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDIGroup_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDIGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDIGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDIGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDIGroup.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDIGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDIGroupBinding> Ros2Dobot_msgs_v4SrvDIGroupClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDIGroup.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDIGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDIGroupBinding> Ros2Dobot_msgs_v4SrvDIGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DIGROUPDEC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DIGROUPDEC 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDIGroupDEC.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_call
     */
    struct Ros2Dobot_msgs_v4SrvDIGroupDECBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDIGroupDEC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDIGroupDEC_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDIGroupDEC_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDIGroupDEC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDIGroupDEC_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDIGroupDEC_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDIGroupDEC request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDIGroupDEC request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDIGroupDEC ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDIGroupDEC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDIGroupDECBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDIGroupDECBinding> Ros2Dobot_msgs_v4SrvDIGroupDECClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDIGroupDEC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDIGroupDECBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDIGroupDECBinding> Ros2Dobot_msgs_v4SrvDIGroupDECServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DO_call
     */
    struct Ros2Dobot_msgs_v4SrvDOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDOBinding> Ros2Dobot_msgs_v4SrvDOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDOBinding> Ros2Dobot_msgs_v4SrvDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DOGROUP 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_call
     */
    struct Ros2Dobot_msgs_v4SrvDOGroupBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDOGroup_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDOGroup_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDOGroup_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDOGroup_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDOGroup.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDOGroupBinding> Ros2Dobot_msgs_v4SrvDOGroupClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDOGroup.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOGroupBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDOGroupBinding> Ros2Dobot_msgs_v4SrvDOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DOGROUPDEC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DOGROUPDEC 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDOGroupDEC.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_call
     */
    struct Ros2Dobot_msgs_v4SrvDOGroupDECBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDOGroupDEC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDOGroupDEC_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDOGroupDEC_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDOGroupDEC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDOGroupDEC_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDOGroupDEC_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDOGroupDEC request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDOGroupDEC request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDOGroupDEC ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDOGroupDEC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOGroupDECBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDOGroupDECBinding> Ros2Dobot_msgs_v4SrvDOGroupDECClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDOGroupDEC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOGroupDECBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDOGroupDECBinding> Ros2Dobot_msgs_v4SrvDOGroupDECServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_call
     */
    struct Ros2Dobot_msgs_v4SrvDOInstantBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDOInstant_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDOInstant_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDOInstant_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDOInstant_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDOInstant.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDOInstantBinding> Ros2Dobot_msgs_v4SrvDOInstantClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDOInstant.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDOInstantBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDOInstantBinding> Ros2Dobot_msgs_v4SrvDOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DISABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DISABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDisableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_call
     */
    struct Ros2Dobot_msgs_v4SrvDisableRobotBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDisableRobot_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDisableRobot_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDisableRobot_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDisableRobot_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDisableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDisableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDisableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDisableRobot.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDisableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDisableRobotBinding> Ros2Dobot_msgs_v4SrvDisableRobotClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDisableRobot.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDisableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDisableRobotBinding> Ros2Dobot_msgs_v4SrvDisableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DRAGSENSIVITY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_DRAGSENSIVITY 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvDragSensivity.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_call
     */
    struct Ros2Dobot_msgs_v4SrvDragSensivityBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvDragSensivity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDragSensivity_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvDragSensivity_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvDragSensivity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvDragSensivity_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvDragSensivity_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvDragSensivity request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvDragSensivity request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvDragSensivity ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvDragSensivity.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDragSensivityBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvDragSensivityBinding> Ros2Dobot_msgs_v4SrvDragSensivityClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvDragSensivity.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvDragSensivityBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvDragSensivityBinding> Ros2Dobot_msgs_v4SrvDragSensivityServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_EMERGENCYSTOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_EMERGENCYSTOP 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvEmergencyStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_call
     */
    struct Ros2Dobot_msgs_v4SrvEmergencyStopBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvEmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEmergencyStop_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvEmergencyStop_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvEmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEmergencyStop_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvEmergencyStop_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvEmergencyStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvEmergencyStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvEmergencyStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvEmergencyStop.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEmergencyStopBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvEmergencyStopBinding> Ros2Dobot_msgs_v4SrvEmergencyStopClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvEmergencyStop.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEmergencyStopBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvEmergencyStopBinding> Ros2Dobot_msgs_v4SrvEmergencyStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENABLEFTSENSOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENABLEFTSENSOR 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvEnableFTSensor.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_call
     */
    struct Ros2Dobot_msgs_v4SrvEnableFTSensorBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvEnableFTSensor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEnableFTSensor_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvEnableFTSensor_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvEnableFTSensor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEnableFTSensor_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvEnableFTSensor_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvEnableFTSensor request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvEnableFTSensor request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvEnableFTSensor ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvEnableFTSensor.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEnableFTSensorBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvEnableFTSensorBinding> Ros2Dobot_msgs_v4SrvEnableFTSensorClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvEnableFTSensor.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEnableFTSensorBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvEnableFTSensorBinding> Ros2Dobot_msgs_v4SrvEnableFTSensorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvEnableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_call
     */
    struct Ros2Dobot_msgs_v4SrvEnableRobotBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvEnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEnableRobot_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvEnableRobot_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvEnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEnableRobot_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvEnableRobot_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvEnableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvEnableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvEnableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvEnableRobot.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEnableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvEnableRobotBinding> Ros2Dobot_msgs_v4SrvEnableRobotClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvEnableRobot.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEnableRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvEnableRobotBinding> Ros2Dobot_msgs_v4SrvEnableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENABLESAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENABLESAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvEnableSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_call
     */
    struct Ros2Dobot_msgs_v4SrvEnableSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvEnableSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvEnableSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvEnableSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvEnableSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvEnableSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvEnableSafeSkin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEnableSafeSkinBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvEnableSafeSkinBinding> Ros2Dobot_msgs_v4SrvEnableSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvEnableSafeSkin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEnableSafeSkinBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvEnableSafeSkinBinding> Ros2Dobot_msgs_v4SrvEnableSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENDRTOFFSET
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ENDRTOFFSET 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvEndRTOffset.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_call
     */
    struct Ros2Dobot_msgs_v4SrvEndRTOffsetBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvEndRTOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEndRTOffset_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvEndRTOffset_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvEndRTOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvEndRTOffset_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvEndRTOffset_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvEndRTOffset request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvEndRTOffset request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvEndRTOffset ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvEndRTOffset.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEndRTOffsetBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvEndRTOffsetBinding> Ros2Dobot_msgs_v4SrvEndRTOffsetClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvEndRTOffset.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvEndRTOffsetBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvEndRTOffsetBinding> Ros2Dobot_msgs_v4SrvEndRTOffsetServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCCOLLISIONSWITCH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCCOLLISIONSWITCH 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCCollisionSwitch.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_call
     */
    struct Ros2Dobot_msgs_v4SrvFCCollisionSwitchBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCCollisionSwitch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCCollisionSwitch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCCollisionSwitch request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCCollisionSwitch request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCCollisionSwitch ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCCollisionSwitch.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCCollisionSwitchBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCCollisionSwitchBinding> Ros2Dobot_msgs_v4SrvFCCollisionSwitchClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCCollisionSwitch.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCCollisionSwitchBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCCollisionSwitchBinding> Ros2Dobot_msgs_v4SrvFCCollisionSwitchServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCFORCEMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCFORCEMODE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCForceMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_call
     */
    struct Ros2Dobot_msgs_v4SrvFCForceModeBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCForceMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCForceMode_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCForceMode_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCForceMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCForceMode_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCForceMode_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCForceMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCForceMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCForceMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCForceMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCForceModeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCForceModeBinding> Ros2Dobot_msgs_v4SrvFCForceModeClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCForceMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCForceModeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCForceModeBinding> Ros2Dobot_msgs_v4SrvFCForceModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCOFF
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCOFF 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCOff.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_call
     */
    struct Ros2Dobot_msgs_v4SrvFCOffBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCOff.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCOff_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCOff_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCOff.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCOff_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCOff_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCOff request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCOff request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCOff ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCOff.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCOffBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCOffBinding> Ros2Dobot_msgs_v4SrvFCOffClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCOff.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCOffBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCOffBinding> Ros2Dobot_msgs_v4SrvFCOffServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETDAMPING
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETDAMPING 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCSetDamping.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_call
     */
    struct Ros2Dobot_msgs_v4SrvFCSetDampingBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCSetDamping.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetDamping_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetDamping_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCSetDamping.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetDamping_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetDamping_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCSetDamping request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCSetDamping request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCSetDamping ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCSetDamping.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetDampingBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCSetDampingBinding> Ros2Dobot_msgs_v4SrvFCSetDampingClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCSetDamping.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetDampingBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCSetDampingBinding> Ros2Dobot_msgs_v4SrvFCSetDampingServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETDEVIATION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETDEVIATION 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCSetDeviation.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_call
     */
    struct Ros2Dobot_msgs_v4SrvFCSetDeviationBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCSetDeviation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetDeviation_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetDeviation_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCSetDeviation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetDeviation_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetDeviation_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCSetDeviation request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCSetDeviation request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCSetDeviation ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCSetDeviation.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetDeviationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCSetDeviationBinding> Ros2Dobot_msgs_v4SrvFCSetDeviationClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCSetDeviation.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetDeviationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCSetDeviationBinding> Ros2Dobot_msgs_v4SrvFCSetDeviationServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETFORCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETFORCE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCSetForce.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_call
     */
    struct Ros2Dobot_msgs_v4SrvFCSetForceBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCSetForce.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetForce_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetForce_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCSetForce.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetForce_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetForce_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCSetForce request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCSetForce request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCSetForce ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCSetForce.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetForceBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCSetForceBinding> Ros2Dobot_msgs_v4SrvFCSetForceClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCSetForce.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetForceBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCSetForceBinding> Ros2Dobot_msgs_v4SrvFCSetForceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETFORCELIMIT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETFORCELIMIT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCSetForceLimit.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_call
     */
    struct Ros2Dobot_msgs_v4SrvFCSetForceLimitBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCSetForceLimit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCSetForceLimit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCSetForceLimit request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCSetForceLimit request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCSetForceLimit ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCSetForceLimit.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetForceLimitBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCSetForceLimitBinding> Ros2Dobot_msgs_v4SrvFCSetForceLimitClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCSetForceLimit.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetForceLimitBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCSetForceLimitBinding> Ros2Dobot_msgs_v4SrvFCSetForceLimitServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETFORCESPEEDLIMIT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETFORCESPEEDLIMIT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_call
     */
    struct Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitBinding> Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitBinding> Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETMASS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETMASS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCSetMass.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_call
     */
    struct Ros2Dobot_msgs_v4SrvFCSetMassBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCSetMass.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetMass_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetMass_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCSetMass.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetMass_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetMass_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCSetMass request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCSetMass request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCSetMass ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCSetMass.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetMassBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCSetMassBinding> Ros2Dobot_msgs_v4SrvFCSetMassClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCSetMass.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetMassBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCSetMassBinding> Ros2Dobot_msgs_v4SrvFCSetMassServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETSTIFFNESS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FCSETSTIFFNESS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvFCSetStiffness.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_call
     */
    struct Ros2Dobot_msgs_v4SrvFCSetStiffnessBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvFCSetStiffness.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetStiffness_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetStiffness_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvFCSetStiffness.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvFCSetStiffness_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvFCSetStiffness_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvFCSetStiffness request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvFCSetStiffness request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvFCSetStiffness ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvFCSetStiffness.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetStiffnessBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvFCSetStiffnessBinding> Ros2Dobot_msgs_v4SrvFCSetStiffnessClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvFCSetStiffness.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvFCSetStiffnessBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvFCSetStiffnessBinding> Ros2Dobot_msgs_v4SrvFCSetStiffnessServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FORCEDRIVEMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FORCEDRIVEMODE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvForceDriveMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_call
     */
    struct Ros2Dobot_msgs_v4SrvForceDriveModeBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvForceDriveMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvForceDriveMode_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvForceDriveMode_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvForceDriveMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvForceDriveMode_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvForceDriveMode_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvForceDriveMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvForceDriveMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvForceDriveMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvForceDriveMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvForceDriveModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvForceDriveModeBinding> Ros2Dobot_msgs_v4SrvForceDriveModeClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvForceDriveMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvForceDriveModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvForceDriveModeBinding> Ros2Dobot_msgs_v4SrvForceDriveModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FORCEDRIVESPEED
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_FORCEDRIVESPEED 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvForceDriveSpeed.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_call
     */
    struct Ros2Dobot_msgs_v4SrvForceDriveSpeedBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvForceDriveSpeed.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvForceDriveSpeed.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvForceDriveSpeed request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvForceDriveSpeed request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvForceDriveSpeed ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvForceDriveSpeed.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvForceDriveSpeedBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvForceDriveSpeedBinding> Ros2Dobot_msgs_v4SrvForceDriveSpeedClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvForceDriveSpeed.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvForceDriveSpeedBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvForceDriveSpeedBinding> Ros2Dobot_msgs_v4SrvForceDriveSpeedServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETAO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETAO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetAO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_call
     */
    struct Ros2Dobot_msgs_v4SrvGetAOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetAO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetAO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetAO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetAO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetAO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetAO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetAO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetAO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetAO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetAOBinding> Ros2Dobot_msgs_v4SrvGetAOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetAO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetAOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetAOBinding> Ros2Dobot_msgs_v4SrvGetAOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETANGLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETANGLE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetAngle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_call
     */
    struct Ros2Dobot_msgs_v4SrvGetAngleBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetAngle_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetAngle_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetAngle_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetAngle_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetAngle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetAngle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetAngle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetAngle.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetAngleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetAngleBinding> Ros2Dobot_msgs_v4SrvGetAngleClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetAngle.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetAngleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetAngleBinding> Ros2Dobot_msgs_v4SrvGetAngleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETCOILS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_call
     */
    struct Ros2Dobot_msgs_v4SrvGetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetCoils_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetCoils_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetCoils_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetCoils_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetCoils.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetCoilsBinding> Ros2Dobot_msgs_v4SrvGetCoilsClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetCoils.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetCoilsBinding> Ros2Dobot_msgs_v4SrvGetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETCURRENTCOMMANDID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETCURRENTCOMMANDID 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetCurrentCommandId.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_call
     */
    struct Ros2Dobot_msgs_v4SrvGetCurrentCommandIdBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetCurrentCommandId.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetCurrentCommandId.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetCurrentCommandId request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetCurrentCommandId request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetCurrentCommandId ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetCurrentCommandId.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetCurrentCommandIdBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetCurrentCommandIdBinding> Ros2Dobot_msgs_v4SrvGetCurrentCommandIdClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetCurrentCommandId.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetCurrentCommandIdBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetCurrentCommandIdBinding> Ros2Dobot_msgs_v4SrvGetCurrentCommandIdServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETDO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_call
     */
    struct Ros2Dobot_msgs_v4SrvGetDOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetDO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetDO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetDO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetDO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetDOBinding> Ros2Dobot_msgs_v4SrvGetDOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetDOBinding> Ros2Dobot_msgs_v4SrvGetDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETDOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETDOGROUP 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetDOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_call
     */
    struct Ros2Dobot_msgs_v4SrvGetDOGroupBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetDOGroup_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetDOGroup_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetDOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetDOGroup_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetDOGroup_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetDOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetDOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetDOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetDOGroup.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetDOGroupBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetDOGroupBinding> Ros2Dobot_msgs_v4SrvGetDOGroupClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetDOGroup.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetDOGroupBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetDOGroupBinding> Ros2Dobot_msgs_v4SrvGetDOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETDOGROUPDEC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETDOGROUPDEC 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetDOGroupDEC.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_call
     */
    struct Ros2Dobot_msgs_v4SrvGetDOGroupDECBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetDOGroupDEC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetDOGroupDEC.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetDOGroupDEC request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetDOGroupDEC request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetDOGroupDEC ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetDOGroupDEC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetDOGroupDECBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetDOGroupDECBinding> Ros2Dobot_msgs_v4SrvGetDOGroupDECClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetDOGroupDEC.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetDOGroupDECBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetDOGroupDECBinding> Ros2Dobot_msgs_v4SrvGetDOGroupDECServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETERROR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETERROR 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetError.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_call
     */
    struct Ros2Dobot_msgs_v4SrvGetErrorBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetError_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetError_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetError_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetError_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetError request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetError request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetError ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetError.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetErrorBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetErrorBinding> Ros2Dobot_msgs_v4SrvGetErrorClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetError.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetErrorBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetErrorBinding> Ros2Dobot_msgs_v4SrvGetErrorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETERRORID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETERRORID 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetErrorID.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_call
     */
    struct Ros2Dobot_msgs_v4SrvGetErrorIDBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetErrorID_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetErrorID_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetErrorID_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetErrorID_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetErrorID request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetErrorID request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetErrorID ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetErrorID.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetErrorIDBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetErrorIDBinding> Ros2Dobot_msgs_v4SrvGetErrorIDClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetErrorID.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetErrorIDBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetErrorIDBinding> Ros2Dobot_msgs_v4SrvGetErrorIDServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETFORCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETFORCE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetForce.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_call
     */
    struct Ros2Dobot_msgs_v4SrvGetForceBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetForce.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetForce_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetForce_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetForce.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetForce_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetForce_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetForce request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetForce request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetForce ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetForce.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetForceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetForceBinding> Ros2Dobot_msgs_v4SrvGetForceClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetForce.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetForceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetForceBinding> Ros2Dobot_msgs_v4SrvGetForceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_call
     */
    struct Ros2Dobot_msgs_v4SrvGetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetHoldRegs_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetHoldRegs_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetHoldRegs_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetHoldRegs_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetHoldRegs.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetHoldRegsBinding> Ros2Dobot_msgs_v4SrvGetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetHoldRegs.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetHoldRegsBinding> Ros2Dobot_msgs_v4SrvGetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINBITS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINBITS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetInBits.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_call
     */
    struct Ros2Dobot_msgs_v4SrvGetInBitsBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInBits_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInBits_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInBits_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInBits_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetInBits request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetInBits request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetInBits ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetInBits.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInBitsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetInBitsBinding> Ros2Dobot_msgs_v4SrvGetInBitsClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetInBits.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInBitsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetInBitsBinding> Ros2Dobot_msgs_v4SrvGetInBitsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINREGS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetInRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_call
     */
    struct Ros2Dobot_msgs_v4SrvGetInRegsBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInRegs_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInRegs_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInRegs_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInRegs_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetInRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetInRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetInRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetInRegs.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetInRegsBinding> Ros2Dobot_msgs_v4SrvGetInRegsClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetInRegs.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInRegsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetInRegsBinding> Ros2Dobot_msgs_v4SrvGetInRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetInputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_call
     */
    struct Ros2Dobot_msgs_v4SrvGetInputBoolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetInputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInputBool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInputBool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetInputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInputBool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInputBool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetInputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetInputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetInputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetInputBool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInputBoolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetInputBoolBinding> Ros2Dobot_msgs_v4SrvGetInputBoolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetInputBool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInputBoolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetInputBoolBinding> Ros2Dobot_msgs_v4SrvGetInputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetInputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_call
     */
    struct Ros2Dobot_msgs_v4SrvGetInputFloatBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetInputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInputFloat_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInputFloat_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetInputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInputFloat_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInputFloat_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetInputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetInputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetInputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetInputFloat.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetInputFloatBinding> Ros2Dobot_msgs_v4SrvGetInputFloatClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetInputFloat.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetInputFloatBinding> Ros2Dobot_msgs_v4SrvGetInputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETINPUTINT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetInputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_call
     */
    struct Ros2Dobot_msgs_v4SrvGetInputIntBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetInputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInputInt_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInputInt_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetInputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetInputInt_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetInputInt_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetInputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetInputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetInputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetInputInt.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetInputIntBinding> Ros2Dobot_msgs_v4SrvGetInputIntClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetInputInt.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetInputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetInputIntBinding> Ros2Dobot_msgs_v4SrvGetInputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETOUTPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETOUTPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetOutputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_call
     */
    struct Ros2Dobot_msgs_v4SrvGetOutputBoolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetOutputBool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetOutputBool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetOutputBool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetOutputBool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetOutputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetOutputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetOutputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetOutputBool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetOutputBoolBinding> Ros2Dobot_msgs_v4SrvGetOutputBoolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetOutputBool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetOutputBoolBinding> Ros2Dobot_msgs_v4SrvGetOutputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETOUTPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETOUTPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetOutputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_call
     */
    struct Ros2Dobot_msgs_v4SrvGetOutputFloatBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetOutputFloat_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetOutputFloat_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetOutputFloat_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetOutputFloat_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetOutputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetOutputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetOutputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetOutputFloat.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetOutputFloatBinding> Ros2Dobot_msgs_v4SrvGetOutputFloatClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetOutputFloat.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetOutputFloatBinding> Ros2Dobot_msgs_v4SrvGetOutputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETOUTPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETOUTPUTINT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetOutputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_call
     */
    struct Ros2Dobot_msgs_v4SrvGetOutputIntBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetOutputInt_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetOutputInt_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetOutputInt_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetOutputInt_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetOutputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetOutputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetOutputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetOutputInt.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetOutputIntBinding> Ros2Dobot_msgs_v4SrvGetOutputIntClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetOutputInt.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetOutputIntBinding> Ros2Dobot_msgs_v4SrvGetOutputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETPOSE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_call
     */
    struct Ros2Dobot_msgs_v4SrvGetPoseBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetPose_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetPose_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetPose_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetPose_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetPose.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetPoseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetPoseBinding> Ros2Dobot_msgs_v4SrvGetPoseClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetPose.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetPoseBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetPoseBinding> Ros2Dobot_msgs_v4SrvGetPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETSTARTPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETSTARTPOSE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetStartPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_call
     */
    struct Ros2Dobot_msgs_v4SrvGetStartPoseBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetStartPose_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetStartPose_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetStartPose_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetStartPose_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetStartPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetStartPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetStartPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetStartPose.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetStartPoseBinding> Ros2Dobot_msgs_v4SrvGetStartPoseClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetStartPose.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetStartPoseBinding> Ros2Dobot_msgs_v4SrvGetStartPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETTOOLDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_GETTOOLDO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvGetToolDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_call
     */
    struct Ros2Dobot_msgs_v4SrvGetToolDOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvGetToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetToolDO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvGetToolDO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvGetToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvGetToolDO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvGetToolDO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvGetToolDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvGetToolDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvGetToolDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvGetToolDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetToolDOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvGetToolDOBinding> Ros2Dobot_msgs_v4SrvGetToolDOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvGetToolDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvGetToolDOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvGetToolDOBinding> Ros2Dobot_msgs_v4SrvGetToolDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_INVERSEKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_INVERSEKIN 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvInverseKin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_call
     */
    struct Ros2Dobot_msgs_v4SrvInverseKinBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvInverseKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvInverseKin_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvInverseKin_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvInverseKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvInverseKin_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvInverseKin_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvInverseKin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvInverseKin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvInverseKin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvInverseKin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvInverseKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvInverseKinBinding> Ros2Dobot_msgs_v4SrvInverseKinClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvInverseKin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvInverseKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvInverseKinBinding> Ros2Dobot_msgs_v4SrvInverseKinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_INVERSESOLUTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_INVERSESOLUTION 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvInverseSolution.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_call
     */
    struct Ros2Dobot_msgs_v4SrvInverseSolutionBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvInverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvInverseSolution_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvInverseSolution_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvInverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvInverseSolution_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvInverseSolution_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvInverseSolution request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvInverseSolution request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvInverseSolution ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvInverseSolution.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvInverseSolutionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvInverseSolutionBinding> Ros2Dobot_msgs_v4SrvInverseSolutionClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvInverseSolution.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvInverseSolutionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvInverseSolutionBinding> Ros2Dobot_msgs_v4SrvInverseSolutionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MODBUSCLOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MODBUSCLOSE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvModbusClose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_call
     */
    struct Ros2Dobot_msgs_v4SrvModbusCloseBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvModbusClose_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvModbusClose_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvModbusClose_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvModbusClose_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvModbusClose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvModbusClose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvModbusClose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvModbusClose.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvModbusCloseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvModbusCloseBinding> Ros2Dobot_msgs_v4SrvModbusCloseClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvModbusClose.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvModbusCloseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvModbusCloseBinding> Ros2Dobot_msgs_v4SrvModbusCloseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MODBUSCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MODBUSCREATE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvModbusCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_call
     */
    struct Ros2Dobot_msgs_v4SrvModbusCreateBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvModbusCreate_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvModbusCreate_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvModbusCreate_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvModbusCreate_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvModbusCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvModbusCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvModbusCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvModbusCreate.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvModbusCreateBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvModbusCreateBinding> Ros2Dobot_msgs_v4SrvModbusCreateClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvModbusCreate.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvModbusCreateBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvModbusCreateBinding> Ros2Dobot_msgs_v4SrvModbusCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MODBUSRTUCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MODBUSRTUCREATE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvModbusRTUCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_call
     */
    struct Ros2Dobot_msgs_v4SrvModbusRTUCreateBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvModbusRTUCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvModbusRTUCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvModbusRTUCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvModbusRTUCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvModbusRTUCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvModbusRTUCreate.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvModbusRTUCreateBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvModbusRTUCreateBinding> Ros2Dobot_msgs_v4SrvModbusRTUCreateClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvModbusRTUCreate.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvModbusRTUCreateBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvModbusRTUCreateBinding> Ros2Dobot_msgs_v4SrvModbusRTUCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVJ 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_call
     */
    struct Ros2Dobot_msgs_v4SrvMovJBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovJ_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvMovJ_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovJ_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvMovJ_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvMovJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvMovJBinding> Ros2Dobot_msgs_v4SrvMovJClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvMovJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvMovJBinding> Ros2Dobot_msgs_v4SrvMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVJIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVJIO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvMovJIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_call
     */
    struct Ros2Dobot_msgs_v4SrvMovJIOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvMovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovJIO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvMovJIO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvMovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovJIO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvMovJIO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvMovJIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvMovJIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvMovJIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvMovJIO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovJIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvMovJIOBinding> Ros2Dobot_msgs_v4SrvMovJIOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvMovJIO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovJIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvMovJIOBinding> Ros2Dobot_msgs_v4SrvMovJIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvMovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_call
     */
    struct Ros2Dobot_msgs_v4SrvMovLBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovL_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvMovL_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovL_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvMovL_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvMovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvMovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvMovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvMovL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvMovLBinding> Ros2Dobot_msgs_v4SrvMovLClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvMovL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvMovLBinding> Ros2Dobot_msgs_v4SrvMovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVLIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVLIO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvMovLIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_call
     */
    struct Ros2Dobot_msgs_v4SrvMovLIOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvMovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovLIO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvMovLIO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvMovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMovLIO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvMovLIO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvMovLIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvMovLIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvMovLIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvMovLIO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovLIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvMovLIOBinding> Ros2Dobot_msgs_v4SrvMovLIOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvMovLIO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMovLIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvMovLIOBinding> Ros2Dobot_msgs_v4SrvMovLIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_MOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvMoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_call
     */
    struct Ros2Dobot_msgs_v4SrvMoveJogBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMoveJog_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvMoveJog_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvMoveJog_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvMoveJog_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvMoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvMoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvMoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvMoveJog.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMoveJogBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvMoveJogBinding> Ros2Dobot_msgs_v4SrvMoveJogClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvMoveJog.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvMoveJogBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvMoveJogBinding> Ros2Dobot_msgs_v4SrvMoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_PAUSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_PAUSE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvPause.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_call
     */
    struct Ros2Dobot_msgs_v4SrvPauseBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvPause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvPause_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvPause_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvPause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvPause_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvPause_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvPause request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvPause request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvPause ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvPause.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvPauseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvPauseBinding> Ros2Dobot_msgs_v4SrvPauseClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvPause.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvPauseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvPauseBinding> Ros2Dobot_msgs_v4SrvPauseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_POSITIVEKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_POSITIVEKIN 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvPositiveKin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_call
     */
    struct Ros2Dobot_msgs_v4SrvPositiveKinBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvPositiveKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvPositiveKin_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvPositiveKin_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvPositiveKin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvPositiveKin_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvPositiveKin_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvPositiveKin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvPositiveKin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvPositiveKin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvPositiveKin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvPositiveKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvPositiveKinBinding> Ros2Dobot_msgs_v4SrvPositiveKinClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvPositiveKin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvPositiveKinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvPositiveKinBinding> Ros2Dobot_msgs_v4SrvPositiveKinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_POWERON
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_POWERON 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvPowerOn.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_call
     */
    struct Ros2Dobot_msgs_v4SrvPowerOnBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvPowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvPowerOn_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvPowerOn_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvPowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvPowerOn_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvPowerOn_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvPowerOn request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvPowerOn request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvPowerOn ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvPowerOn.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvPowerOnBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvPowerOnBinding> Ros2Dobot_msgs_v4SrvPowerOnClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvPowerOn.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvPowerOnBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvPowerOnBinding> Ros2Dobot_msgs_v4SrvPowerOnServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELJOINTMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELJOINTMOVJ 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRelJointMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_call
     */
    struct Ros2Dobot_msgs_v4SrvRelJointMovJBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelJointMovJ_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRelJointMovJ_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelJointMovJ_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRelJointMovJ_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRelJointMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRelJointMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRelJointMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRelJointMovJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelJointMovJBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRelJointMovJBinding> Ros2Dobot_msgs_v4SrvRelJointMovJClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRelJointMovJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelJointMovJBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRelJointMovJBinding> Ros2Dobot_msgs_v4SrvRelJointMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVJTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVJTOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRelMovJTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_call
     */
    struct Ros2Dobot_msgs_v4SrvRelMovJToolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovJTool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovJTool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovJTool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovJTool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRelMovJTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRelMovJTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRelMovJTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRelMovJTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovJToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRelMovJToolBinding> Ros2Dobot_msgs_v4SrvRelMovJToolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRelMovJTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovJToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRelMovJToolBinding> Ros2Dobot_msgs_v4SrvRelMovJToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVJUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVJUSER 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRelMovJUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_call
     */
    struct Ros2Dobot_msgs_v4SrvRelMovJUserBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovJUser_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovJUser_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovJUser_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovJUser_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRelMovJUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRelMovJUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRelMovJUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRelMovJUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovJUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRelMovJUserBinding> Ros2Dobot_msgs_v4SrvRelMovJUserClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRelMovJUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovJUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRelMovJUserBinding> Ros2Dobot_msgs_v4SrvRelMovJUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVLTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVLTOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRelMovLTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_call
     */
    struct Ros2Dobot_msgs_v4SrvRelMovLToolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovLTool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovLTool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovLTool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovLTool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRelMovLTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRelMovLTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRelMovLTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRelMovLTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovLToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRelMovLToolBinding> Ros2Dobot_msgs_v4SrvRelMovLToolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRelMovLTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovLToolBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRelMovLToolBinding> Ros2Dobot_msgs_v4SrvRelMovLToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVLUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RELMOVLUSER 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRelMovLUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_call
     */
    struct Ros2Dobot_msgs_v4SrvRelMovLUserBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovLUser_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovLUser_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRelMovLUser_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRelMovLUser_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRelMovLUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRelMovLUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRelMovLUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRelMovLUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovLUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRelMovLUserBinding> Ros2Dobot_msgs_v4SrvRelMovLUserClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRelMovLUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRelMovLUserBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRelMovLUserBinding> Ros2Dobot_msgs_v4SrvRelMovLUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_REQUESTCONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_REQUESTCONTROL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRequestControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_call
     */
    struct Ros2Dobot_msgs_v4SrvRequestControlBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRequestControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRequestControl_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRequestControl_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRequestControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRequestControl_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRequestControl_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRequestControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRequestControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRequestControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRequestControl.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRequestControlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRequestControlBinding> Ros2Dobot_msgs_v4SrvRequestControlClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRequestControl.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRequestControlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRequestControlBinding> Ros2Dobot_msgs_v4SrvRequestControlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RESETROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RESETROBOT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvResetRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_call
     */
    struct Ros2Dobot_msgs_v4SrvResetRobotBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvResetRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvResetRobot_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvResetRobot_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvResetRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvResetRobot_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvResetRobot_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvResetRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvResetRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvResetRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvResetRobot.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvResetRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvResetRobotBinding> Ros2Dobot_msgs_v4SrvResetRobotClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvResetRobot.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvResetRobotBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvResetRobotBinding> Ros2Dobot_msgs_v4SrvResetRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ROBOTMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_ROBOTMODE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRobotMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_call
     */
    struct Ros2Dobot_msgs_v4SrvRobotModeBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRobotMode_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRobotMode_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRobotMode_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRobotMode_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRobotMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRobotMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRobotMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRobotMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRobotModeBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRobotModeBinding> Ros2Dobot_msgs_v4SrvRobotModeClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRobotMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRobotModeBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRobotModeBinding> Ros2Dobot_msgs_v4SrvRobotModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RUNSCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RUNSCRIPT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRunScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_call
     */
    struct Ros2Dobot_msgs_v4SrvRunScriptBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRunScript_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRunScript_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRunScript_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRunScript_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRunScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRunScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRunScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRunScript.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRunScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRunScriptBinding> Ros2Dobot_msgs_v4SrvRunScriptClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRunScript.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRunScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRunScriptBinding> Ros2Dobot_msgs_v4SrvRunScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RUNTO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_RUNTO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvRunTo.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_call
     */
    struct Ros2Dobot_msgs_v4SrvRunToBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvRunTo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRunTo_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvRunTo_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvRunTo.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvRunTo_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvRunTo_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvRunTo request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvRunTo request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvRunTo ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvRunTo.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRunToBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvRunToBinding> Ros2Dobot_msgs_v4SrvRunToClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvRunTo.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvRunToBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvRunToBinding> Ros2Dobot_msgs_v4SrvRunToServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SERVOJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SERVOJ 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvServoJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_call
     */
    struct Ros2Dobot_msgs_v4SrvServoJBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvServoJ_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvServoJ_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvServoJ_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvServoJ_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvServoJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvServoJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvServoJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvServoJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvServoJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvServoJBinding> Ros2Dobot_msgs_v4SrvServoJClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvServoJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvServoJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvServoJBinding> Ros2Dobot_msgs_v4SrvServoJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SERVOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SERVOP 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvServoP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_call
     */
    struct Ros2Dobot_msgs_v4SrvServoPBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvServoP_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvServoP_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvServoP_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvServoP_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvServoP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvServoP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvServoP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvServoP.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvServoPBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvServoPBinding> Ros2Dobot_msgs_v4SrvServoPClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvServoP.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvServoPBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvServoPBinding> Ros2Dobot_msgs_v4SrvServoPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETBACKDISTANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETBACKDISTANCE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetBackDistance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_call
     */
    struct Ros2Dobot_msgs_v4SrvSetBackDistanceBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetBackDistance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetBackDistance_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetBackDistance_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetBackDistance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetBackDistance_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetBackDistance_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetBackDistance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetBackDistance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetBackDistance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetBackDistance.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetBackDistanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetBackDistanceBinding> Ros2Dobot_msgs_v4SrvSetBackDistanceClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetBackDistance.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetBackDistanceBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetBackDistanceBinding> Ros2Dobot_msgs_v4SrvSetBackDistanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETCOILS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_call
     */
    struct Ros2Dobot_msgs_v4SrvSetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetCoils_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetCoils_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetCoils_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetCoils_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetCoils.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetCoilsBinding> Ros2Dobot_msgs_v4SrvSetCoilsClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetCoils.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetCoilsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetCoilsBinding> Ros2Dobot_msgs_v4SrvSetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETCOLLISIONLEVEL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETCOLLISIONLEVEL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetCollisionLevel.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_call
     */
    struct Ros2Dobot_msgs_v4SrvSetCollisionLevelBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetCollisionLevel request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetCollisionLevel request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetCollisionLevel ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetCollisionLevel.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetCollisionLevelBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetCollisionLevelBinding> Ros2Dobot_msgs_v4SrvSetCollisionLevelClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetCollisionLevel.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetCollisionLevelBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetCollisionLevelBinding> Ros2Dobot_msgs_v4SrvSetCollisionLevelServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETFCCOLLISION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETFCCOLLISION 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetFCCollision.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_call
     */
    struct Ros2Dobot_msgs_v4SrvSetFCCollisionBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetFCCollision.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetFCCollision_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetFCCollision_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetFCCollision.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetFCCollision_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetFCCollision_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetFCCollision request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetFCCollision request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetFCCollision ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetFCCollision.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetFCCollisionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetFCCollisionBinding> Ros2Dobot_msgs_v4SrvSetFCCollisionClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetFCCollision.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetFCCollisionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetFCCollisionBinding> Ros2Dobot_msgs_v4SrvSetFCCollisionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_call
     */
    struct Ros2Dobot_msgs_v4SrvSetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetHoldRegs_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetHoldRegs_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetHoldRegs_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetHoldRegs_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetHoldRegs.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetHoldRegsBinding> Ros2Dobot_msgs_v4SrvSetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetHoldRegs.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetHoldRegsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetHoldRegsBinding> Ros2Dobot_msgs_v4SrvSetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETOUTPUTBOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETOUTPUTBOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetOutputBool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_call
     */
    struct Ros2Dobot_msgs_v4SrvSetOutputBoolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetOutputBool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetOutputBool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetOutputBool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetOutputBool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetOutputBool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetOutputBool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetOutputBool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetOutputBool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetOutputBool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetOutputBoolBinding> Ros2Dobot_msgs_v4SrvSetOutputBoolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetOutputBool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetOutputBoolBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetOutputBoolBinding> Ros2Dobot_msgs_v4SrvSetOutputBoolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETOUTPUTFLOAT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETOUTPUTFLOAT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetOutputFloat.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_call
     */
    struct Ros2Dobot_msgs_v4SrvSetOutputFloatBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetOutputFloat_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetOutputFloat_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetOutputFloat.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetOutputFloat_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetOutputFloat_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetOutputFloat request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetOutputFloat request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetOutputFloat ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetOutputFloat.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetOutputFloatBinding> Ros2Dobot_msgs_v4SrvSetOutputFloatClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetOutputFloat.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetOutputFloatBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetOutputFloatBinding> Ros2Dobot_msgs_v4SrvSetOutputFloatServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETOUTPUTINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETOUTPUTINT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetOutputInt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_call
     */
    struct Ros2Dobot_msgs_v4SrvSetOutputIntBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetOutputInt_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetOutputInt_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetOutputInt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetOutputInt_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetOutputInt_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetOutputInt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetOutputInt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetOutputInt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetOutputInt.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetOutputIntBinding> Ros2Dobot_msgs_v4SrvSetOutputIntClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetOutputInt.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetOutputIntBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetOutputIntBinding> Ros2Dobot_msgs_v4SrvSetOutputIntServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETPAYLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETPAYLOAD 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetPayload.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_call
     */
    struct Ros2Dobot_msgs_v4SrvSetPayloadBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetPayload_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetPayload_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetPayload_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetPayload_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetPayload request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetPayload request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetPayload ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetPayload.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetPayloadBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetPayloadBinding> Ros2Dobot_msgs_v4SrvSetPayloadClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetPayload.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetPayloadBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetPayloadBinding> Ros2Dobot_msgs_v4SrvSetPayloadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETPOSTCOLLISIONMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETPOSTCOLLISIONMODE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetPostCollisionMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_call
     */
    struct Ros2Dobot_msgs_v4SrvSetPostCollisionModeBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetPostCollisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetPostCollisionMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetPostCollisionMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetPostCollisionMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetPostCollisionMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetPostCollisionMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetPostCollisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetPostCollisionModeBinding> Ros2Dobot_msgs_v4SrvSetPostCollisionModeClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetPostCollisionMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetPostCollisionModeBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetPostCollisionModeBinding> Ros2Dobot_msgs_v4SrvSetPostCollisionModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETSAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETSAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_call
     */
    struct Ros2Dobot_msgs_v4SrvSetSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetSafeSkin_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetSafeSkin_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetSafeSkin_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetSafeSkin_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetSafeSkin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetSafeSkinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetSafeSkinBinding> Ros2Dobot_msgs_v4SrvSetSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetSafeSkin.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetSafeSkinBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetSafeSkinBinding> Ros2Dobot_msgs_v4SrvSetSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETSAFEWALLENABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETSAFEWALLENABLE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetSafeWallEnable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_call
     */
    struct Ros2Dobot_msgs_v4SrvSetSafeWallEnableBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetSafeWallEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetSafeWallEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetSafeWallEnable request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetSafeWallEnable request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetSafeWallEnable ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetSafeWallEnable.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetSafeWallEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetSafeWallEnableBinding> Ros2Dobot_msgs_v4SrvSetSafeWallEnableClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetSafeWallEnable.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetSafeWallEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetSafeWallEnableBinding> Ros2Dobot_msgs_v4SrvSetSafeWallEnableServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_call
     */
    struct Ros2Dobot_msgs_v4SrvSetToolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetTool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetTool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetTool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetTool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetToolBinding> Ros2Dobot_msgs_v4SrvSetToolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetToolBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetToolBinding> Ros2Dobot_msgs_v4SrvSetToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOL485
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOL485 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetTool485.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_call
     */
    struct Ros2Dobot_msgs_v4SrvSetTool485Binding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetTool485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetTool485_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetTool485_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetTool485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetTool485_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetTool485_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetTool485 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetTool485 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetTool485 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetTool485.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetTool485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetTool485Binding> Ros2Dobot_msgs_v4SrvSetTool485Client;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetTool485.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetTool485Binding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetTool485Binding> Ros2Dobot_msgs_v4SrvSetTool485Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOLMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOLMODE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetToolMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_call
     */
    struct Ros2Dobot_msgs_v4SrvSetToolModeBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetToolMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetToolMode_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetToolMode_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetToolMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetToolMode_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetToolMode_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetToolMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetToolMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetToolMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetToolMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetToolModeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetToolModeBinding> Ros2Dobot_msgs_v4SrvSetToolModeClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetToolMode.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetToolModeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetToolModeBinding> Ros2Dobot_msgs_v4SrvSetToolModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOLPOWER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETTOOLPOWER 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetToolPower.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_call
     */
    struct Ros2Dobot_msgs_v4SrvSetToolPowerBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetToolPower.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetToolPower_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetToolPower_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetToolPower.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetToolPower_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetToolPower_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetToolPower request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetToolPower request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetToolPower ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetToolPower.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetToolPowerBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetToolPowerBinding> Ros2Dobot_msgs_v4SrvSetToolPowerClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetToolPower.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetToolPowerBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetToolPowerBinding> Ros2Dobot_msgs_v4SrvSetToolPowerServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETUSER 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_call
     */
    struct Ros2Dobot_msgs_v4SrvSetUserBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetUser_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetUser_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetUser_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetUser_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetUserBinding> Ros2Dobot_msgs_v4SrvSetUserClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetUserBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetUserBinding> Ros2Dobot_msgs_v4SrvSetUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETWORKZONEENABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SETWORKZONEENABLE 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSetWorkZoneEnable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_call
     */
    struct Ros2Dobot_msgs_v4SrvSetWorkZoneEnableBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSetWorkZoneEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSetWorkZoneEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSetWorkZoneEnable request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSetWorkZoneEnable request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSetWorkZoneEnable ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSetWorkZoneEnable.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetWorkZoneEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSetWorkZoneEnableBinding> Ros2Dobot_msgs_v4SrvSetWorkZoneEnableClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSetWorkZoneEnable.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSetWorkZoneEnableBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSetWorkZoneEnableBinding> Ros2Dobot_msgs_v4SrvSetWorkZoneEnableServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SIXFORCEHOME
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SIXFORCEHOME 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSixForceHome.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_call
     */
    struct Ros2Dobot_msgs_v4SrvSixForceHomeBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSixForceHome.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSixForceHome_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSixForceHome_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSixForceHome.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSixForceHome_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSixForceHome_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSixForceHome request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSixForceHome request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSixForceHome ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSixForceHome.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSixForceHomeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSixForceHomeBinding> Ros2Dobot_msgs_v4SrvSixForceHomeClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSixForceHome.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSixForceHomeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSixForceHomeBinding> Ros2Dobot_msgs_v4SrvSixForceHomeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SPEEDFACTOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_SPEEDFACTOR 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvSpeedFactor.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_call
     */
    struct Ros2Dobot_msgs_v4SrvSpeedFactorBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvSpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSpeedFactor_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvSpeedFactor_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvSpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvSpeedFactor_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvSpeedFactor_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvSpeedFactor request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvSpeedFactor request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvSpeedFactor ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvSpeedFactor.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSpeedFactorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvSpeedFactorBinding> Ros2Dobot_msgs_v4SrvSpeedFactorClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvSpeedFactor.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvSpeedFactorBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvSpeedFactorBinding> Ros2Dobot_msgs_v4SrvSpeedFactorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STARTDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STARTDRAG 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvStartDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_call
     */
    struct Ros2Dobot_msgs_v4SrvStartDragBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvStartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStartDrag_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvStartDrag_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvStartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStartDrag_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvStartDrag_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvStartDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvStartDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvStartDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvStartDrag.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStartDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvStartDragBinding> Ros2Dobot_msgs_v4SrvStartDragClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvStartDrag.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStartDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvStartDragBinding> Ros2Dobot_msgs_v4SrvStartDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STARTPATH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STARTPATH 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvStartPath.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_call
     */
    struct Ros2Dobot_msgs_v4SrvStartPathBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvStartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStartPath_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvStartPath_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvStartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStartPath_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvStartPath_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvStartPath request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvStartPath request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvStartPath ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvStartPath.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStartPathBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvStartPathBinding> Ros2Dobot_msgs_v4SrvStartPathClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvStartPath.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStartPathBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvStartPathBinding> Ros2Dobot_msgs_v4SrvStartPathServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STARTRTOFFSET
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STARTRTOFFSET 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvStartRTOffset.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_call
     */
    struct Ros2Dobot_msgs_v4SrvStartRTOffsetBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvStartRTOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStartRTOffset_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvStartRTOffset_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvStartRTOffset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStartRTOffset_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvStartRTOffset_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvStartRTOffset request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvStartRTOffset request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvStartRTOffset ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvStartRTOffset.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStartRTOffsetBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvStartRTOffsetBinding> Ros2Dobot_msgs_v4SrvStartRTOffsetClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvStartRTOffset.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStartRTOffsetBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvStartRTOffsetBinding> Ros2Dobot_msgs_v4SrvStartRTOffsetServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STOP 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_call
     */
    struct Ros2Dobot_msgs_v4SrvStopBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStop_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvStop_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStop_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvStop_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvStop.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStopBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvStopBinding> Ros2Dobot_msgs_v4SrvStopClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvStop.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStopBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvStopBinding> Ros2Dobot_msgs_v4SrvStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STOPDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STOPDRAG 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvStopDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_call
     */
    struct Ros2Dobot_msgs_v4SrvStopDragBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvStopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStopDrag_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvStopDrag_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvStopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStopDrag_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvStopDrag_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvStopDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvStopDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvStopDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvStopDrag.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStopDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvStopDragBinding> Ros2Dobot_msgs_v4SrvStopDragClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvStopDrag.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStopDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvStopDragBinding> Ros2Dobot_msgs_v4SrvStopDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STOPMOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_STOPMOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvStopMoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_call
     */
    struct Ros2Dobot_msgs_v4SrvStopMoveJogBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvStopMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStopMoveJog_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvStopMoveJog_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvStopMoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvStopMoveJog_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvStopMoveJog_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvStopMoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvStopMoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvStopMoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvStopMoveJog.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStopMoveJogBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvStopMoveJogBinding> Ros2Dobot_msgs_v4SrvStopMoveJogClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvStopMoveJog.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvStopMoveJogBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvStopMoveJogBinding> Ros2Dobot_msgs_v4SrvStopMoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TCPDASHBOARD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TCPDASHBOARD 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvTcpDashboard.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_call
     */
    struct Ros2Dobot_msgs_v4SrvTcpDashboardBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvTcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvTcpDashboard_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvTcpDashboard_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvTcpDashboard.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvTcpDashboard_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvTcpDashboard_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvTcpDashboard request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvTcpDashboard request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvTcpDashboard ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvTcpDashboard.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvTcpDashboardBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvTcpDashboardBinding> Ros2Dobot_msgs_v4SrvTcpDashboardClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvTcpDashboard.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvTcpDashboardBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvTcpDashboardBinding> Ros2Dobot_msgs_v4SrvTcpDashboardServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_call
     */
    struct Ros2Dobot_msgs_v4SrvToolBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvTool_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvTool_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvTool_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvTool_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvToolBinding> Ros2Dobot_msgs_v4SrvToolClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvTool.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvToolBinding> Ros2Dobot_msgs_v4SrvToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLAI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLAI 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvToolAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_call
     */
    struct Ros2Dobot_msgs_v4SrvToolAIBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolAI_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvToolAI_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolAI_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvToolAI_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvToolAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvToolAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvToolAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvToolAI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolAIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvToolAIBinding> Ros2Dobot_msgs_v4SrvToolAIClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvToolAI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolAIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvToolAIBinding> Ros2Dobot_msgs_v4SrvToolAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLDI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLDI 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvToolDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_call
     */
    struct Ros2Dobot_msgs_v4SrvToolDIBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolDI_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvToolDI_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolDI_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvToolDI_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvToolDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvToolDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvToolDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvToolDI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolDIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvToolDIBinding> Ros2Dobot_msgs_v4SrvToolDIClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvToolDI.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolDIBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvToolDIBinding> Ros2Dobot_msgs_v4SrvToolDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLDO 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvToolDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_call
     */
    struct Ros2Dobot_msgs_v4SrvToolDOBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolDO_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvToolDO_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolDO_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvToolDO_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvToolDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvToolDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvToolDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvToolDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolDOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvToolDOBinding> Ros2Dobot_msgs_v4SrvToolDOClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvToolDO.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolDOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvToolDOBinding> Ros2Dobot_msgs_v4SrvToolDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLDOINSTANT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_TOOLDOINSTANT 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvToolDOInstant.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_call
     */
    struct Ros2Dobot_msgs_v4SrvToolDOInstantBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvToolDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolDOInstant_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvToolDOInstant_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvToolDOInstant.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvToolDOInstant_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvToolDOInstant_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvToolDOInstant request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvToolDOInstant request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvToolDOInstant ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvToolDOInstant.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolDOInstantBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvToolDOInstantBinding> Ros2Dobot_msgs_v4SrvToolDOInstantClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvToolDOInstant.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvToolDOInstantBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvToolDOInstantBinding> Ros2Dobot_msgs_v4SrvToolDOInstantServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_USER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_USER 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_User_call
     */
    struct Ros2Dobot_msgs_v4SrvUserBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvUser_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvUser_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvUser_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvUser_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_User_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_User_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_User_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_User_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_User_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_User_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvUserBinding> Ros2Dobot_msgs_v4SrvUserClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvUser.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvUserBinding> Ros2Dobot_msgs_v4SrvUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_VELJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_VELJ 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvVelJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_call
     */
    struct Ros2Dobot_msgs_v4SrvVelJBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvVelJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvVelJ_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvVelJ_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvVelJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvVelJ_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvVelJ_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvVelJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvVelJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvVelJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvVelJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvVelJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvVelJBinding> Ros2Dobot_msgs_v4SrvVelJClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvVelJ.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvVelJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvVelJBinding> Ros2Dobot_msgs_v4SrvVelJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_VELL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_DOBOT_MSGS_V4_SRV_VELL 1

    /**
     * @brief Exact C operation binding for Ros2Dobot_msgs_v4SrvVelL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_call
     */
    struct Ros2Dobot_msgs_v4SrvVelLBinding
    {
        /**
         * @brief Complete request record for Ros2Dobot_msgs_v4SrvVelL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvVelL_Request>
         */
        typedef Ros2Dobot_msgs_v4SrvVelL_Request Request;
        /**
         * @brief Complete response record for Ros2Dobot_msgs_v4SrvVelL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Dobot_msgs_v4SrvVelL_Response>
         */
        typedef Ros2Dobot_msgs_v4SrvVelL_Response Response;

        /**
         * @brief Issue one complete Ros2Dobot_msgs_v4SrvVelL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Dobot_msgs_v4SrvVelL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Dobot_msgs_v4SrvVelL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Dobot_msgs_v4SrvVelL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvVelLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Dobot_msgs_v4SrvVelLBinding> Ros2Dobot_msgs_v4SrvVelLClient;
    /**
     * @brief Owning typed service server for Ros2Dobot_msgs_v4SrvVelL.
     * @details Binds every operation to Ros2Dobot_msgs_v4SrvVelLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Dobot_msgs_v4SrvVelLBinding> Ros2Dobot_msgs_v4SrvVelLServer;
#endif
}  // namespace uwvm_custom
