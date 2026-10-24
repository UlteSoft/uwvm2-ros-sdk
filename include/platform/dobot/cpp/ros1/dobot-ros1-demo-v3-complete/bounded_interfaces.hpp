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
#include <dobot/c/ros1/dobot-ros1-demo-v3-complete/bounded_interfaces.h>
#include <dobot/cpp/ros1/dobot-ros1-demo-v3-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3AI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_AI_call
     */
    struct Ros1Rosdemo_v3AIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3AI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AIRequest>
         */
        typedef Ros1Rosdemo_v3AIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3AI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AIResponse>
         */
        typedef Ros1Rosdemo_v3AIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3AI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_AI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3AI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_AI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_AI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3AI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_AI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3AI.
     * @details Binds every operation to Ros1Rosdemo_v3AIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3AIBinding> Ros1Rosdemo_v3AIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3AI.
     * @details Binds every operation to Ros1Rosdemo_v3AIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3AIBinding> Ros1Rosdemo_v3AIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3AO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_AO_call
     */
    struct Ros1Rosdemo_v3AOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3AO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AORequest>
         */
        typedef Ros1Rosdemo_v3AORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3AO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AOResponse>
         */
        typedef Ros1Rosdemo_v3AOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3AO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_AO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3AO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_AO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_AO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3AO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_AO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3AO.
     * @details Binds every operation to Ros1Rosdemo_v3AOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3AOBinding> Ros1Rosdemo_v3AOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3AO.
     * @details Binds every operation to Ros1Rosdemo_v3AOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3AOBinding> Ros1Rosdemo_v3AOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_AOEXECUTE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3AOExecute.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_AOExecute_call
     */
    struct Ros1Rosdemo_v3AOExecuteBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3AOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AOExecuteRequest>
         */
        typedef Ros1Rosdemo_v3AOExecuteRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3AOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AOExecuteResponse>
         */
        typedef Ros1Rosdemo_v3AOExecuteResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3AOExecute request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_AOExecute_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AOExecute_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3AOExecute request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_AOExecute_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_AOExecute_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3AOExecute ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_AOExecute_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AOExecute_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3AOExecute.
     * @details Binds every operation to Ros1Rosdemo_v3AOExecuteBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3AOExecuteBinding> Ros1Rosdemo_v3AOExecuteClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3AOExecute.
     * @details Binds every operation to Ros1Rosdemo_v3AOExecuteBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3AOExecuteBinding> Ros1Rosdemo_v3AOExecuteServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3AccJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_AccJ_call
     */
    struct Ros1Rosdemo_v3AccJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3AccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AccJRequest>
         */
        typedef Ros1Rosdemo_v3AccJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3AccJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AccJResponse>
         */
        typedef Ros1Rosdemo_v3AccJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3AccJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_AccJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AccJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3AccJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_AccJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_AccJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3AccJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_AccJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AccJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3AccJ.
     * @details Binds every operation to Ros1Rosdemo_v3AccJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3AccJBinding> Ros1Rosdemo_v3AccJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3AccJ.
     * @details Binds every operation to Ros1Rosdemo_v3AccJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3AccJBinding> Ros1Rosdemo_v3AccJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ACCL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3AccL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_AccL_call
     */
    struct Ros1Rosdemo_v3AccLBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3AccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AccLRequest>
         */
        typedef Ros1Rosdemo_v3AccLRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3AccL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3AccLResponse>
         */
        typedef Ros1Rosdemo_v3AccLResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3AccL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_AccL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AccL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3AccL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_AccL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_AccL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3AccL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_AccL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_AccL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3AccL.
     * @details Binds every operation to Ros1Rosdemo_v3AccLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3AccLBinding> Ros1Rosdemo_v3AccLClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3AccL.
     * @details Binds every operation to Ros1Rosdemo_v3AccLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3AccLBinding> Ros1Rosdemo_v3AccLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARC 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Arc.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Arc_call
     */
    struct Ros1Rosdemo_v3ArcBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Arc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ArcRequest>
         */
        typedef Ros1Rosdemo_v3ArcRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Arc.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ArcResponse>
         */
        typedef Ros1Rosdemo_v3ArcResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Arc request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Arc_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Arc_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Arc request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Arc_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Arc_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Arc ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Arc_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Arc_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Arc.
     * @details Binds every operation to Ros1Rosdemo_v3ArcBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ArcBinding> Ros1Rosdemo_v3ArcClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Arc.
     * @details Binds every operation to Ros1Rosdemo_v3ArcBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ArcBinding> Ros1Rosdemo_v3ArcServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ARCH 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Arch.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Arch_call
     */
    struct Ros1Rosdemo_v3ArchBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Arch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ArchRequest>
         */
        typedef Ros1Rosdemo_v3ArchRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Arch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ArchResponse>
         */
        typedef Ros1Rosdemo_v3ArchResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Arch request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Arch_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Arch_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Arch request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Arch_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Arch_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Arch ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Arch_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Arch_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Arch.
     * @details Binds every operation to Ros1Rosdemo_v3ArchBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ArchBinding> Ros1Rosdemo_v3ArchClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Arch.
     * @details Binds every operation to Ros1Rosdemo_v3ArchBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ArchBinding> Ros1Rosdemo_v3ArchServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_BRAKECONTROL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3BrakeControl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_BrakeControl_call
     */
    struct Ros1Rosdemo_v3BrakeControlBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3BrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3BrakeControlRequest>
         */
        typedef Ros1Rosdemo_v3BrakeControlRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3BrakeControl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3BrakeControlResponse>
         */
        typedef Ros1Rosdemo_v3BrakeControlResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3BrakeControl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_BrakeControl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_BrakeControl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3BrakeControl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_BrakeControl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_BrakeControl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3BrakeControl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_BrakeControl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_BrakeControl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3BrakeControl.
     * @details Binds every operation to Ros1Rosdemo_v3BrakeControlBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3BrakeControlBinding> Ros1Rosdemo_v3BrakeControlClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3BrakeControl.
     * @details Binds every operation to Ros1Rosdemo_v3BrakeControlBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3BrakeControlBinding> Ros1Rosdemo_v3BrakeControlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3CP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_CP_call
     */
    struct Ros1Rosdemo_v3CPBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3CP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3CPRequest>
         */
        typedef Ros1Rosdemo_v3CPRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3CP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3CPResponse>
         */
        typedef Ros1Rosdemo_v3CPResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3CP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_CP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_CP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3CP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_CP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_CP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3CP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_CP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_CP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3CP.
     * @details Binds every operation to Ros1Rosdemo_v3CPBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3CPBinding> Ros1Rosdemo_v3CPClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3CP.
     * @details Binds every operation to Ros1Rosdemo_v3CPBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3CPBinding> Ros1Rosdemo_v3CPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CIRCLE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Circle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Circle_call
     */
    struct Ros1Rosdemo_v3CircleBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Circle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3CircleRequest>
         */
        typedef Ros1Rosdemo_v3CircleRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Circle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3CircleResponse>
         */
        typedef Ros1Rosdemo_v3CircleResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Circle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Circle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Circle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Circle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Circle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Circle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Circle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Circle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Circle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Circle.
     * @details Binds every operation to Ros1Rosdemo_v3CircleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3CircleBinding> Ros1Rosdemo_v3CircleClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Circle.
     * @details Binds every operation to Ros1Rosdemo_v3CircleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3CircleBinding> Ros1Rosdemo_v3CircleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CLEARERROR 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ClearError.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ClearError_call
     */
    struct Ros1Rosdemo_v3ClearErrorBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ClearErrorRequest>
         */
        typedef Ros1Rosdemo_v3ClearErrorRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ClearError.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ClearErrorResponse>
         */
        typedef Ros1Rosdemo_v3ClearErrorResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ClearError request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ClearError_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ClearError_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ClearError request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ClearError_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ClearError_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ClearError ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ClearError_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ClearError_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ClearError.
     * @details Binds every operation to Ros1Rosdemo_v3ClearErrorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ClearErrorBinding> Ros1Rosdemo_v3ClearErrorClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ClearError.
     * @details Binds every operation to Ros1Rosdemo_v3ClearErrorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ClearErrorBinding> Ros1Rosdemo_v3ClearErrorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUESCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ContinueScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ContinueScript_call
     */
    struct Ros1Rosdemo_v3ContinueScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ContinueScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ContinueScriptRequest>
         */
        typedef Ros1Rosdemo_v3ContinueScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ContinueScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ContinueScriptResponse>
         */
        typedef Ros1Rosdemo_v3ContinueScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ContinueScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ContinueScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ContinueScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ContinueScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ContinueScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ContinueScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ContinueScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ContinueScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ContinueScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ContinueScript.
     * @details Binds every operation to Ros1Rosdemo_v3ContinueScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ContinueScriptBinding> Ros1Rosdemo_v3ContinueScriptClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ContinueScript.
     * @details Binds every operation to Ros1Rosdemo_v3ContinueScriptBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ContinueScriptBinding> Ros1Rosdemo_v3ContinueScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_CONTINUES 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Continues.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Continues_call
     */
    struct Ros1Rosdemo_v3ContinuesBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Continues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ContinuesRequest>
         */
        typedef Ros1Rosdemo_v3ContinuesRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Continues.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ContinuesResponse>
         */
        typedef Ros1Rosdemo_v3ContinuesResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Continues request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Continues_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Continues_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Continues request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Continues_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Continues_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Continues ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Continues_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Continues_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Continues.
     * @details Binds every operation to Ros1Rosdemo_v3ContinuesBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ContinuesBinding> Ros1Rosdemo_v3ContinuesClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Continues.
     * @details Binds every operation to Ros1Rosdemo_v3ContinuesBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ContinuesBinding> Ros1Rosdemo_v3ContinuesServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3DI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_DI_call
     */
    struct Ros1Rosdemo_v3DIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3DI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DIRequest>
         */
        typedef Ros1Rosdemo_v3DIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3DI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DIResponse>
         */
        typedef Ros1Rosdemo_v3DIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3DI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_DI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3DI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_DI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_DI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3DI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_DI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3DI.
     * @details Binds every operation to Ros1Rosdemo_v3DIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3DIBinding> Ros1Rosdemo_v3DIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3DI.
     * @details Binds every operation to Ros1Rosdemo_v3DIBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3DIBinding> Ros1Rosdemo_v3DIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3DIGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_DIGroup_call
     */
    struct Ros1Rosdemo_v3DIGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3DIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DIGroupRequest>
         */
        typedef Ros1Rosdemo_v3DIGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3DIGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DIGroupResponse>
         */
        typedef Ros1Rosdemo_v3DIGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3DIGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_DIGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DIGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3DIGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_DIGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_DIGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3DIGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_DIGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DIGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3DIGroup.
     * @details Binds every operation to Ros1Rosdemo_v3DIGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3DIGroupBinding> Ros1Rosdemo_v3DIGroupClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3DIGroup.
     * @details Binds every operation to Ros1Rosdemo_v3DIGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3DIGroupBinding> Ros1Rosdemo_v3DIGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3DO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_DO_call
     */
    struct Ros1Rosdemo_v3DOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3DO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DORequest>
         */
        typedef Ros1Rosdemo_v3DORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3DO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DOResponse>
         */
        typedef Ros1Rosdemo_v3DOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3DO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_DO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3DO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_DO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_DO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3DO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_DO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3DO.
     * @details Binds every operation to Ros1Rosdemo_v3DOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3DOBinding> Ros1Rosdemo_v3DOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3DO.
     * @details Binds every operation to Ros1Rosdemo_v3DOBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3DOBinding> Ros1Rosdemo_v3DOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOEXECUTE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3DOExecute.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_DOExecute_call
     */
    struct Ros1Rosdemo_v3DOExecuteBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3DOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DOExecuteRequest>
         */
        typedef Ros1Rosdemo_v3DOExecuteRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3DOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DOExecuteResponse>
         */
        typedef Ros1Rosdemo_v3DOExecuteResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3DOExecute request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_DOExecute_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DOExecute_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3DOExecute request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_DOExecute_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_DOExecute_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3DOExecute ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_DOExecute_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DOExecute_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3DOExecute.
     * @details Binds every operation to Ros1Rosdemo_v3DOExecuteBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3DOExecuteBinding> Ros1Rosdemo_v3DOExecuteClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3DOExecute.
     * @details Binds every operation to Ros1Rosdemo_v3DOExecuteBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3DOExecuteBinding> Ros1Rosdemo_v3DOExecuteServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DOGROUP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3DOGroup.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_DOGroup_call
     */
    struct Ros1Rosdemo_v3DOGroupBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3DOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DOGroupRequest>
         */
        typedef Ros1Rosdemo_v3DOGroupRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3DOGroup.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DOGroupResponse>
         */
        typedef Ros1Rosdemo_v3DOGroupResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3DOGroup request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_DOGroup_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DOGroup_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3DOGroup request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_DOGroup_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_DOGroup_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3DOGroup ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_DOGroup_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DOGroup_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3DOGroup.
     * @details Binds every operation to Ros1Rosdemo_v3DOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3DOGroupBinding> Ros1Rosdemo_v3DOGroupClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3DOGroup.
     * @details Binds every operation to Ros1Rosdemo_v3DOGroupBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3DOGroupBinding> Ros1Rosdemo_v3DOGroupServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DIGITALOUTPUTS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3DigitalOutputs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_call
     */
    struct Ros1Rosdemo_v3DigitalOutputsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3DigitalOutputs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DigitalOutputsRequest>
         */
        typedef Ros1Rosdemo_v3DigitalOutputsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3DigitalOutputs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DigitalOutputsResponse>
         */
        typedef Ros1Rosdemo_v3DigitalOutputsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3DigitalOutputs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3DigitalOutputs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3DigitalOutputs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DigitalOutputs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3DigitalOutputs.
     * @details Binds every operation to Ros1Rosdemo_v3DigitalOutputsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3DigitalOutputsBinding> Ros1Rosdemo_v3DigitalOutputsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3DigitalOutputs.
     * @details Binds every operation to Ros1Rosdemo_v3DigitalOutputsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3DigitalOutputsBinding> Ros1Rosdemo_v3DigitalOutputsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_DISABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3DisableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_DisableRobot_call
     */
    struct Ros1Rosdemo_v3DisableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3DisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DisableRobotRequest>
         */
        typedef Ros1Rosdemo_v3DisableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3DisableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3DisableRobotResponse>
         */
        typedef Ros1Rosdemo_v3DisableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3DisableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_DisableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DisableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3DisableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_DisableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_DisableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3DisableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_DisableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_DisableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3DisableRobot.
     * @details Binds every operation to Ros1Rosdemo_v3DisableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3DisableRobotBinding> Ros1Rosdemo_v3DisableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3DisableRobot.
     * @details Binds every operation to Ros1Rosdemo_v3DisableRobotBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3DisableRobotBinding> Ros1Rosdemo_v3DisableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_EMERGENCYSTOP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3EmergencyStop.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_EmergencyStop_call
     */
    struct Ros1Rosdemo_v3EmergencyStopBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3EmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3EmergencyStopRequest>
         */
        typedef Ros1Rosdemo_v3EmergencyStopRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3EmergencyStop.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3EmergencyStopResponse>
         */
        typedef Ros1Rosdemo_v3EmergencyStopResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3EmergencyStop request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_EmergencyStop_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_EmergencyStop_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3EmergencyStop request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_EmergencyStop_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_EmergencyStop_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3EmergencyStop ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_EmergencyStop_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_EmergencyStop_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3EmergencyStop.
     * @details Binds every operation to Ros1Rosdemo_v3EmergencyStopBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3EmergencyStopBinding> Ros1Rosdemo_v3EmergencyStopClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3EmergencyStop.
     * @details Binds every operation to Ros1Rosdemo_v3EmergencyStopBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3EmergencyStopBinding> Ros1Rosdemo_v3EmergencyStopServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ENABLEROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3EnableRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_EnableRobot_call
     */
    struct Ros1Rosdemo_v3EnableRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3EnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3EnableRobotRequest>
         */
        typedef Ros1Rosdemo_v3EnableRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3EnableRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3EnableRobotResponse>
         */
        typedef Ros1Rosdemo_v3EnableRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3EnableRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_EnableRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_EnableRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3EnableRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_EnableRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_EnableRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3EnableRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_EnableRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_EnableRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3EnableRobot.
     * @details Binds every operation to Ros1Rosdemo_v3EnableRobotBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3EnableRobotBinding> Ros1Rosdemo_v3EnableRobotClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3EnableRobot.
     * @details Binds every operation to Ros1Rosdemo_v3EnableRobotBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3EnableRobotBinding> Ros1Rosdemo_v3EnableRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETANGLE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetAngle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetAngle_call
     */
    struct Ros1Rosdemo_v3GetAngleBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetAngleRequest>
         */
        typedef Ros1Rosdemo_v3GetAngleRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetAngle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetAngleResponse>
         */
        typedef Ros1Rosdemo_v3GetAngleResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetAngle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetAngle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetAngle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetAngle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetAngle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetAngle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetAngle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetAngle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetAngle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetAngle.
     * @details Binds every operation to Ros1Rosdemo_v3GetAngleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetAngleBinding> Ros1Rosdemo_v3GetAngleClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetAngle.
     * @details Binds every operation to Ros1Rosdemo_v3GetAngleBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetAngleBinding> Ros1Rosdemo_v3GetAngleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetCoils_call
     */
    struct Ros1Rosdemo_v3GetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetCoilsRequest>
         */
        typedef Ros1Rosdemo_v3GetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetCoilsResponse>
         */
        typedef Ros1Rosdemo_v3GetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetCoils.
     * @details Binds every operation to Ros1Rosdemo_v3GetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetCoilsBinding> Ros1Rosdemo_v3GetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetCoils.
     * @details Binds every operation to Ros1Rosdemo_v3GetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetCoilsBinding> Ros1Rosdemo_v3GetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETERRORID 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetErrorID.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetErrorID_call
     */
    struct Ros1Rosdemo_v3GetErrorIDBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetErrorIDRequest>
         */
        typedef Ros1Rosdemo_v3GetErrorIDRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetErrorID.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetErrorIDResponse>
         */
        typedef Ros1Rosdemo_v3GetErrorIDResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetErrorID request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetErrorID_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetErrorID_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetErrorID request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetErrorID_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetErrorID_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetErrorID ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetErrorID_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetErrorID_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetErrorID.
     * @details Binds every operation to Ros1Rosdemo_v3GetErrorIDBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetErrorIDBinding> Ros1Rosdemo_v3GetErrorIDClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetErrorID.
     * @details Binds every operation to Ros1Rosdemo_v3GetErrorIDBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetErrorIDBinding> Ros1Rosdemo_v3GetErrorIDServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_call
     */
    struct Ros1Rosdemo_v3GetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetHoldRegsRequest>
         */
        typedef Ros1Rosdemo_v3GetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetHoldRegsResponse>
         */
        typedef Ros1Rosdemo_v3GetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v3GetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetHoldRegsBinding> Ros1Rosdemo_v3GetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v3GetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetHoldRegsBinding> Ros1Rosdemo_v3GetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINBITS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetInBits.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetInBits_call
     */
    struct Ros1Rosdemo_v3GetInBitsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetInBitsRequest>
         */
        typedef Ros1Rosdemo_v3GetInBitsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetInBits.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetInBitsResponse>
         */
        typedef Ros1Rosdemo_v3GetInBitsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetInBits request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetInBits_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetInBits_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetInBits request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetInBits_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetInBits_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetInBits ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetInBits_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetInBits_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetInBits.
     * @details Binds every operation to Ros1Rosdemo_v3GetInBitsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetInBitsBinding> Ros1Rosdemo_v3GetInBitsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetInBits.
     * @details Binds every operation to Ros1Rosdemo_v3GetInBitsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetInBitsBinding> Ros1Rosdemo_v3GetInBitsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETINREGS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetInRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetInRegs_call
     */
    struct Ros1Rosdemo_v3GetInRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetInRegsRequest>
         */
        typedef Ros1Rosdemo_v3GetInRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetInRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetInRegsResponse>
         */
        typedef Ros1Rosdemo_v3GetInRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetInRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetInRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetInRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetInRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetInRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetInRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetInRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetInRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetInRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetInRegs.
     * @details Binds every operation to Ros1Rosdemo_v3GetInRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetInRegsBinding> Ros1Rosdemo_v3GetInRegsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetInRegs.
     * @details Binds every operation to Ros1Rosdemo_v3GetInRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetInRegsBinding> Ros1Rosdemo_v3GetInRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPATHSTARTPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetPathStartPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_call
     */
    struct Ros1Rosdemo_v3GetPathStartPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetPathStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetPathStartPoseRequest>
         */
        typedef Ros1Rosdemo_v3GetPathStartPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetPathStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetPathStartPoseResponse>
         */
        typedef Ros1Rosdemo_v3GetPathStartPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetPathStartPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetPathStartPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetPathStartPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetPathStartPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetPathStartPose.
     * @details Binds every operation to Ros1Rosdemo_v3GetPathStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetPathStartPoseBinding> Ros1Rosdemo_v3GetPathStartPoseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetPathStartPose.
     * @details Binds every operation to Ros1Rosdemo_v3GetPathStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetPathStartPoseBinding> Ros1Rosdemo_v3GetPathStartPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetPose_call
     */
    struct Ros1Rosdemo_v3GetPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetPoseRequest>
         */
        typedef Ros1Rosdemo_v3GetPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetPoseResponse>
         */
        typedef Ros1Rosdemo_v3GetPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetPose.
     * @details Binds every operation to Ros1Rosdemo_v3GetPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetPoseBinding> Ros1Rosdemo_v3GetPoseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetPose.
     * @details Binds every operation to Ros1Rosdemo_v3GetPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetPoseBinding> Ros1Rosdemo_v3GetPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETSIXFORCEDATA 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetSixForceData.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetSixForceData_call
     */
    struct Ros1Rosdemo_v3GetSixForceDataBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetSixForceData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetSixForceDataRequest>
         */
        typedef Ros1Rosdemo_v3GetSixForceDataRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetSixForceData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetSixForceDataResponse>
         */
        typedef Ros1Rosdemo_v3GetSixForceDataResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetSixForceData request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetSixForceData_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetSixForceData_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetSixForceData request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetSixForceData_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetSixForceData_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetSixForceData ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetSixForceData_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetSixForceData_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetSixForceData.
     * @details Binds every operation to Ros1Rosdemo_v3GetSixForceDataBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetSixForceDataBinding> Ros1Rosdemo_v3GetSixForceDataClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetSixForceData.
     * @details Binds every operation to Ros1Rosdemo_v3GetSixForceDataBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetSixForceDataBinding> Ros1Rosdemo_v3GetSixForceDataServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTERMINAL485 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetTerminal485.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetTerminal485_call
     */
    struct Ros1Rosdemo_v3GetTerminal485Binding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetTerminal485Request>
         */
        typedef Ros1Rosdemo_v3GetTerminal485Request Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetTerminal485Response>
         */
        typedef Ros1Rosdemo_v3GetTerminal485Response Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetTerminal485 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetTerminal485_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetTerminal485_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetTerminal485 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetTerminal485_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetTerminal485_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetTerminal485 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetTerminal485_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetTerminal485_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetTerminal485.
     * @details Binds every operation to Ros1Rosdemo_v3GetTerminal485Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetTerminal485Binding> Ros1Rosdemo_v3GetTerminal485Client;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetTerminal485.
     * @details Binds every operation to Ros1Rosdemo_v3GetTerminal485Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetTerminal485Binding> Ros1Rosdemo_v3GetTerminal485Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_GETTRACESTARTPOSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3GetTraceStartPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_call
     */
    struct Ros1Rosdemo_v3GetTraceStartPoseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3GetTraceStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetTraceStartPoseRequest>
         */
        typedef Ros1Rosdemo_v3GetTraceStartPoseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3GetTraceStartPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3GetTraceStartPoseResponse>
         */
        typedef Ros1Rosdemo_v3GetTraceStartPoseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3GetTraceStartPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3GetTraceStartPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3GetTraceStartPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3GetTraceStartPose.
     * @details Binds every operation to Ros1Rosdemo_v3GetTraceStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3GetTraceStartPoseBinding> Ros1Rosdemo_v3GetTraceStartPoseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3GetTraceStartPose.
     * @details Binds every operation to Ros1Rosdemo_v3GetTraceStartPoseBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3GetTraceStartPoseBinding> Ros1Rosdemo_v3GetTraceStartPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_HANDLETRAJPOINTS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3HandleTrajPoints.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_call
     */
    struct Ros1Rosdemo_v3HandleTrajPointsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3HandleTrajPoints.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3HandleTrajPointsRequest>
         */
        typedef Ros1Rosdemo_v3HandleTrajPointsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3HandleTrajPoints.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3HandleTrajPointsResponse>
         */
        typedef Ros1Rosdemo_v3HandleTrajPointsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3HandleTrajPoints request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3HandleTrajPoints request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3HandleTrajPoints ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_HandleTrajPoints_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3HandleTrajPoints.
     * @details Binds every operation to Ros1Rosdemo_v3HandleTrajPointsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3HandleTrajPointsBinding> Ros1Rosdemo_v3HandleTrajPointsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3HandleTrajPoints.
     * @details Binds every operation to Ros1Rosdemo_v3HandleTrajPointsBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3HandleTrajPointsBinding> Ros1Rosdemo_v3HandleTrajPointsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_INVERSESOLUTION 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3InverseSolution.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_InverseSolution_call
     */
    struct Ros1Rosdemo_v3InverseSolutionBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3InverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3InverseSolutionRequest>
         */
        typedef Ros1Rosdemo_v3InverseSolutionRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3InverseSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3InverseSolutionResponse>
         */
        typedef Ros1Rosdemo_v3InverseSolutionResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3InverseSolution request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_InverseSolution_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_InverseSolution_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3InverseSolution request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_InverseSolution_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_InverseSolution_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3InverseSolution ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_InverseSolution_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_InverseSolution_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3InverseSolution.
     * @details Binds every operation to Ros1Rosdemo_v3InverseSolutionBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3InverseSolutionBinding> Ros1Rosdemo_v3InverseSolutionClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3InverseSolution.
     * @details Binds every operation to Ros1Rosdemo_v3InverseSolutionBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3InverseSolutionBinding> Ros1Rosdemo_v3InverseSolutionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JOINTMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3JointMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_JointMovJ_call
     */
    struct Ros1Rosdemo_v3JointMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3JointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3JointMovJRequest>
         */
        typedef Ros1Rosdemo_v3JointMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3JointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3JointMovJResponse>
         */
        typedef Ros1Rosdemo_v3JointMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3JointMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_JointMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_JointMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3JointMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_JointMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_JointMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3JointMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_JointMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_JointMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3JointMovJ.
     * @details Binds every operation to Ros1Rosdemo_v3JointMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3JointMovJBinding> Ros1Rosdemo_v3JointMovJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3JointMovJ.
     * @details Binds every operation to Ros1Rosdemo_v3JointMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3JointMovJBinding> Ros1Rosdemo_v3JointMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_JUMP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Jump.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Jump_call
     */
    struct Ros1Rosdemo_v3JumpBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Jump.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3JumpRequest>
         */
        typedef Ros1Rosdemo_v3JumpRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Jump.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3JumpResponse>
         */
        typedef Ros1Rosdemo_v3JumpResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Jump request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Jump_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Jump_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Jump request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Jump_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Jump_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Jump ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Jump_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Jump_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Jump.
     * @details Binds every operation to Ros1Rosdemo_v3JumpBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3JumpBinding> Ros1Rosdemo_v3JumpClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Jump.
     * @details Binds every operation to Ros1Rosdemo_v3JumpBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3JumpBinding> Ros1Rosdemo_v3JumpServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LIMZ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3LimZ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_LimZ_call
     */
    struct Ros1Rosdemo_v3LimZBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3LimZ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3LimZRequest>
         */
        typedef Ros1Rosdemo_v3LimZRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3LimZ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3LimZResponse>
         */
        typedef Ros1Rosdemo_v3LimZResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3LimZ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_LimZ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_LimZ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3LimZ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_LimZ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_LimZ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3LimZ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_LimZ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_LimZ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3LimZ.
     * @details Binds every operation to Ros1Rosdemo_v3LimZBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3LimZBinding> Ros1Rosdemo_v3LimZClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3LimZ.
     * @details Binds every operation to Ros1Rosdemo_v3LimZBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3LimZBinding> Ros1Rosdemo_v3LimZServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_LOADSWITCH 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3LoadSwitch.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_LoadSwitch_call
     */
    struct Ros1Rosdemo_v3LoadSwitchBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3LoadSwitch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3LoadSwitchRequest>
         */
        typedef Ros1Rosdemo_v3LoadSwitchRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3LoadSwitch.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3LoadSwitchResponse>
         */
        typedef Ros1Rosdemo_v3LoadSwitchResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3LoadSwitch request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_LoadSwitch_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_LoadSwitch_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3LoadSwitch request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_LoadSwitch_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_LoadSwitch_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3LoadSwitch ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_LoadSwitch_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_LoadSwitch_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3LoadSwitch.
     * @details Binds every operation to Ros1Rosdemo_v3LoadSwitchBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3LoadSwitchBinding> Ros1Rosdemo_v3LoadSwitchClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3LoadSwitch.
     * @details Binds every operation to Ros1Rosdemo_v3LoadSwitchBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3LoadSwitchBinding> Ros1Rosdemo_v3LoadSwitchServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCLOSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ModbusClose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ModbusClose_call
     */
    struct Ros1Rosdemo_v3ModbusCloseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ModbusCloseRequest>
         */
        typedef Ros1Rosdemo_v3ModbusCloseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ModbusClose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ModbusCloseResponse>
         */
        typedef Ros1Rosdemo_v3ModbusCloseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ModbusClose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ModbusClose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ModbusClose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ModbusClose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ModbusClose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ModbusClose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ModbusClose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ModbusClose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ModbusClose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ModbusClose.
     * @details Binds every operation to Ros1Rosdemo_v3ModbusCloseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ModbusCloseBinding> Ros1Rosdemo_v3ModbusCloseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ModbusClose.
     * @details Binds every operation to Ros1Rosdemo_v3ModbusCloseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ModbusCloseBinding> Ros1Rosdemo_v3ModbusCloseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MODBUSCREATE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ModbusCreate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ModbusCreate_call
     */
    struct Ros1Rosdemo_v3ModbusCreateBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ModbusCreateRequest>
         */
        typedef Ros1Rosdemo_v3ModbusCreateRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ModbusCreate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ModbusCreateResponse>
         */
        typedef Ros1Rosdemo_v3ModbusCreateResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ModbusCreate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ModbusCreate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ModbusCreate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ModbusCreate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ModbusCreate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ModbusCreate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ModbusCreate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ModbusCreate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ModbusCreate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ModbusCreate.
     * @details Binds every operation to Ros1Rosdemo_v3ModbusCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ModbusCreateBinding> Ros1Rosdemo_v3ModbusCreateClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ModbusCreate.
     * @details Binds every operation to Ros1Rosdemo_v3ModbusCreateBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ModbusCreateBinding> Ros1Rosdemo_v3ModbusCreateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3MovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_MovJ_call
     */
    struct Ros1Rosdemo_v3MovJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3MovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovJRequest>
         */
        typedef Ros1Rosdemo_v3MovJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3MovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovJResponse>
         */
        typedef Ros1Rosdemo_v3MovJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3MovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3MovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3MovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3MovJ.
     * @details Binds every operation to Ros1Rosdemo_v3MovJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3MovJBinding> Ros1Rosdemo_v3MovJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3MovJ.
     * @details Binds every operation to Ros1Rosdemo_v3MovJBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3MovJBinding> Ros1Rosdemo_v3MovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJEXT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3MovJExt.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_MovJExt_call
     */
    struct Ros1Rosdemo_v3MovJExtBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3MovJExt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovJExtRequest>
         */
        typedef Ros1Rosdemo_v3MovJExtRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3MovJExt.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovJExtResponse>
         */
        typedef Ros1Rosdemo_v3MovJExtResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3MovJExt request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJExt_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJExt_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3MovJExt request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJExt_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJExt_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3MovJExt ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJExt_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJExt_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3MovJExt.
     * @details Binds every operation to Ros1Rosdemo_v3MovJExtBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3MovJExtBinding> Ros1Rosdemo_v3MovJExtClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3MovJExt.
     * @details Binds every operation to Ros1Rosdemo_v3MovJExtBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3MovJExtBinding> Ros1Rosdemo_v3MovJExtServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVJIO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3MovJIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_MovJIO_call
     */
    struct Ros1Rosdemo_v3MovJIOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3MovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovJIORequest>
         */
        typedef Ros1Rosdemo_v3MovJIORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3MovJIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovJIOResponse>
         */
        typedef Ros1Rosdemo_v3MovJIOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3MovJIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3MovJIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3MovJIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_MovJIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovJIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3MovJIO.
     * @details Binds every operation to Ros1Rosdemo_v3MovJIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3MovJIOBinding> Ros1Rosdemo_v3MovJIOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3MovJIO.
     * @details Binds every operation to Ros1Rosdemo_v3MovJIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3MovJIOBinding> Ros1Rosdemo_v3MovJIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3MovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_MovL_call
     */
    struct Ros1Rosdemo_v3MovLBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3MovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovLRequest>
         */
        typedef Ros1Rosdemo_v3MovLRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3MovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovLResponse>
         */
        typedef Ros1Rosdemo_v3MovLResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3MovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_MovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3MovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_MovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3MovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_MovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3MovL.
     * @details Binds every operation to Ros1Rosdemo_v3MovLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3MovLBinding> Ros1Rosdemo_v3MovLClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3MovL.
     * @details Binds every operation to Ros1Rosdemo_v3MovLBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3MovLBinding> Ros1Rosdemo_v3MovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVLIO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3MovLIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_MovLIO_call
     */
    struct Ros1Rosdemo_v3MovLIOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3MovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovLIORequest>
         */
        typedef Ros1Rosdemo_v3MovLIORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3MovLIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MovLIOResponse>
         */
        typedef Ros1Rosdemo_v3MovLIOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3MovLIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_MovLIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovLIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3MovLIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_MovLIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovLIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3MovLIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_MovLIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MovLIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3MovLIO.
     * @details Binds every operation to Ros1Rosdemo_v3MovLIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3MovLIOBinding> Ros1Rosdemo_v3MovLIOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3MovLIO.
     * @details Binds every operation to Ros1Rosdemo_v3MovLIOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3MovLIOBinding> Ros1Rosdemo_v3MovLIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_MOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3MoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_MoveJog_call
     */
    struct Ros1Rosdemo_v3MoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3MoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MoveJogRequest>
         */
        typedef Ros1Rosdemo_v3MoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3MoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3MoveJogResponse>
         */
        typedef Ros1Rosdemo_v3MoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3MoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_MoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3MoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_MoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_MoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3MoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_MoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_MoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3MoveJog.
     * @details Binds every operation to Ros1Rosdemo_v3MoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3MoveJogBinding> Ros1Rosdemo_v3MoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3MoveJog.
     * @details Binds every operation to Ros1Rosdemo_v3MoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3MoveJogBinding> Ros1Rosdemo_v3MoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSESCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3PauseScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_PauseScript_call
     */
    struct Ros1Rosdemo_v3PauseScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3PauseScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PauseScriptRequest>
         */
        typedef Ros1Rosdemo_v3PauseScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3PauseScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PauseScriptResponse>
         */
        typedef Ros1Rosdemo_v3PauseScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3PauseScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_PauseScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PauseScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3PauseScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_PauseScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_PauseScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3PauseScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_PauseScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PauseScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3PauseScript.
     * @details Binds every operation to Ros1Rosdemo_v3PauseScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3PauseScriptBinding> Ros1Rosdemo_v3PauseScriptClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3PauseScript.
     * @details Binds every operation to Ros1Rosdemo_v3PauseScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3PauseScriptBinding> Ros1Rosdemo_v3PauseScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAYLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3PayLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_PayLoad_call
     */
    struct Ros1Rosdemo_v3PayLoadBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3PayLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PayLoadRequest>
         */
        typedef Ros1Rosdemo_v3PayLoadRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3PayLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PayLoadResponse>
         */
        typedef Ros1Rosdemo_v3PayLoadResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3PayLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_PayLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PayLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3PayLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_PayLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_PayLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3PayLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_PayLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PayLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3PayLoad.
     * @details Binds every operation to Ros1Rosdemo_v3PayLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3PayLoadBinding> Ros1Rosdemo_v3PayLoadClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3PayLoad.
     * @details Binds every operation to Ros1Rosdemo_v3PayLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3PayLoadBinding> Ros1Rosdemo_v3PayLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POSITIVESOLUTION 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3PositiveSolution.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_PositiveSolution_call
     */
    struct Ros1Rosdemo_v3PositiveSolutionBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3PositiveSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PositiveSolutionRequest>
         */
        typedef Ros1Rosdemo_v3PositiveSolutionRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3PositiveSolution.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PositiveSolutionResponse>
         */
        typedef Ros1Rosdemo_v3PositiveSolutionResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3PositiveSolution request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_PositiveSolution_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PositiveSolution_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3PositiveSolution request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_PositiveSolution_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_PositiveSolution_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3PositiveSolution ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_PositiveSolution_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PositiveSolution_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3PositiveSolution.
     * @details Binds every operation to Ros1Rosdemo_v3PositiveSolutionBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3PositiveSolutionBinding> Ros1Rosdemo_v3PositiveSolutionClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3PositiveSolution.
     * @details Binds every operation to Ros1Rosdemo_v3PositiveSolutionBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3PositiveSolutionBinding> Ros1Rosdemo_v3PositiveSolutionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_POWERON 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3PowerOn.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_PowerOn_call
     */
    struct Ros1Rosdemo_v3PowerOnBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3PowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PowerOnRequest>
         */
        typedef Ros1Rosdemo_v3PowerOnRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3PowerOn.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PowerOnResponse>
         */
        typedef Ros1Rosdemo_v3PowerOnResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3PowerOn request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_PowerOn_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PowerOn_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3PowerOn request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_PowerOn_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_PowerOn_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3PowerOn ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_PowerOn_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_PowerOn_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3PowerOn.
     * @details Binds every operation to Ros1Rosdemo_v3PowerOnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3PowerOnBinding> Ros1Rosdemo_v3PowerOnClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3PowerOn.
     * @details Binds every operation to Ros1Rosdemo_v3PowerOnBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3PowerOnBinding> Ros1Rosdemo_v3PowerOnServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELJOINTMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RelJointMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_call
     */
    struct Ros1Rosdemo_v3RelJointMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelJointMovJRequest>
         */
        typedef Ros1Rosdemo_v3RelJointMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RelJointMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelJointMovJResponse>
         */
        typedef Ros1Rosdemo_v3RelJointMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RelJointMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RelJointMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RelJointMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelJointMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RelJointMovJ.
     * @details Binds every operation to Ros1Rosdemo_v3RelJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RelJointMovJBinding> Ros1Rosdemo_v3RelJointMovJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RelJointMovJ.
     * @details Binds every operation to Ros1Rosdemo_v3RelJointMovJBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RelJointMovJBinding> Ros1Rosdemo_v3RelJointMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RelMovJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RelMovJ_call
     */
    struct Ros1Rosdemo_v3RelMovJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RelMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovJRequest>
         */
        typedef Ros1Rosdemo_v3RelMovJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RelMovJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovJResponse>
         */
        typedef Ros1Rosdemo_v3RelMovJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RelMovJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RelMovJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RelMovJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RelMovJ.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RelMovJBinding> Ros1Rosdemo_v3RelMovJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RelMovJ.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RelMovJBinding> Ros1Rosdemo_v3RelMovJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RelMovJTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RelMovJTool_call
     */
    struct Ros1Rosdemo_v3RelMovJToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovJToolRequest>
         */
        typedef Ros1Rosdemo_v3RelMovJToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RelMovJTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovJToolResponse>
         */
        typedef Ros1Rosdemo_v3RelMovJToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RelMovJTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RelMovJTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RelMovJTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RelMovJTool.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovJToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RelMovJToolBinding> Ros1Rosdemo_v3RelMovJToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RelMovJTool.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovJToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RelMovJToolBinding> Ros1Rosdemo_v3RelMovJToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVJUSER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RelMovJUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RelMovJUser_call
     */
    struct Ros1Rosdemo_v3RelMovJUserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovJUserRequest>
         */
        typedef Ros1Rosdemo_v3RelMovJUserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RelMovJUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovJUserResponse>
         */
        typedef Ros1Rosdemo_v3RelMovJUserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RelMovJUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RelMovJUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RelMovJUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovJUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovJUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RelMovJUser.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovJUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RelMovJUserBinding> Ros1Rosdemo_v3RelMovJUserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RelMovJUser.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovJUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RelMovJUserBinding> Ros1Rosdemo_v3RelMovJUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RelMovL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RelMovL_call
     */
    struct Ros1Rosdemo_v3RelMovLBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RelMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovLRequest>
         */
        typedef Ros1Rosdemo_v3RelMovLRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RelMovL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovLResponse>
         */
        typedef Ros1Rosdemo_v3RelMovLResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RelMovL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RelMovL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RelMovL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RelMovL.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RelMovLBinding> Ros1Rosdemo_v3RelMovLClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RelMovL.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RelMovLBinding> Ros1Rosdemo_v3RelMovLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLTOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RelMovLTool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RelMovLTool_call
     */
    struct Ros1Rosdemo_v3RelMovLToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovLToolRequest>
         */
        typedef Ros1Rosdemo_v3RelMovLToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RelMovLTool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovLToolResponse>
         */
        typedef Ros1Rosdemo_v3RelMovLToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RelMovLTool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovLTool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovLTool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RelMovLTool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovLTool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovLTool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RelMovLTool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovLTool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovLTool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RelMovLTool.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovLToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RelMovLToolBinding> Ros1Rosdemo_v3RelMovLToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RelMovLTool.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovLToolBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RelMovLToolBinding> Ros1Rosdemo_v3RelMovLToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RELMOVLUSER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RelMovLUser.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RelMovLUser_call
     */
    struct Ros1Rosdemo_v3RelMovLUserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovLUserRequest>
         */
        typedef Ros1Rosdemo_v3RelMovLUserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RelMovLUser.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RelMovLUserResponse>
         */
        typedef Ros1Rosdemo_v3RelMovLUserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RelMovLUser request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovLUser_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovLUser_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RelMovLUser request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovLUser_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovLUser_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RelMovLUser ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RelMovLUser_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RelMovLUser_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RelMovLUser.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovLUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RelMovLUserBinding> Ros1Rosdemo_v3RelMovLUserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RelMovLUser.
     * @details Binds every operation to Ros1Rosdemo_v3RelMovLUserBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RelMovLUserBinding> Ros1Rosdemo_v3RelMovLUserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RESETROBOT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ResetRobot.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ResetRobot_call
     */
    struct Ros1Rosdemo_v3ResetRobotBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ResetRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ResetRobotRequest>
         */
        typedef Ros1Rosdemo_v3ResetRobotRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ResetRobot.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ResetRobotResponse>
         */
        typedef Ros1Rosdemo_v3ResetRobotResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ResetRobot request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ResetRobot_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ResetRobot_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ResetRobot request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ResetRobot_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ResetRobot_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ResetRobot ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ResetRobot_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ResetRobot_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ResetRobot.
     * @details Binds every operation to Ros1Rosdemo_v3ResetRobotBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ResetRobotBinding> Ros1Rosdemo_v3ResetRobotClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ResetRobot.
     * @details Binds every operation to Ros1Rosdemo_v3ResetRobotBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ResetRobotBinding> Ros1Rosdemo_v3ResetRobotServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_ROBOTMODE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RobotMode.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RobotMode_call
     */
    struct Ros1Rosdemo_v3RobotModeBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RobotModeRequest>
         */
        typedef Ros1Rosdemo_v3RobotModeRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RobotMode.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RobotModeResponse>
         */
        typedef Ros1Rosdemo_v3RobotModeResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RobotMode request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RobotMode_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RobotMode_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RobotMode request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RobotMode_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RobotMode_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RobotMode ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RobotMode_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RobotMode_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RobotMode.
     * @details Binds every operation to Ros1Rosdemo_v3RobotModeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RobotModeBinding> Ros1Rosdemo_v3RobotModeClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RobotMode.
     * @details Binds every operation to Ros1Rosdemo_v3RobotModeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RobotModeBinding> Ros1Rosdemo_v3RobotModeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_RUNSCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3RunScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_RunScript_call
     */
    struct Ros1Rosdemo_v3RunScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3RunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RunScriptRequest>
         */
        typedef Ros1Rosdemo_v3RunScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3RunScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3RunScriptResponse>
         */
        typedef Ros1Rosdemo_v3RunScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3RunScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_RunScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RunScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3RunScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_RunScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_RunScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3RunScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_RunScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_RunScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3RunScript.
     * @details Binds every operation to Ros1Rosdemo_v3RunScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3RunScriptBinding> Ros1Rosdemo_v3RunScriptClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3RunScript.
     * @details Binds every operation to Ros1Rosdemo_v3RunScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3RunScriptBinding> Ros1Rosdemo_v3RunScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ServoJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ServoJ_call
     */
    struct Ros1Rosdemo_v3ServoJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ServoJRequest>
         */
        typedef Ros1Rosdemo_v3ServoJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ServoJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ServoJResponse>
         */
        typedef Ros1Rosdemo_v3ServoJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ServoJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ServoJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ServoJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ServoJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ServoJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ServoJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ServoJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ServoJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ServoJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ServoJ.
     * @details Binds every operation to Ros1Rosdemo_v3ServoJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ServoJBinding> Ros1Rosdemo_v3ServoJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ServoJ.
     * @details Binds every operation to Ros1Rosdemo_v3ServoJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ServoJBinding> Ros1Rosdemo_v3ServoJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SERVOP 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ServoP.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ServoP_call
     */
    struct Ros1Rosdemo_v3ServoPBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ServoPRequest>
         */
        typedef Ros1Rosdemo_v3ServoPRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ServoP.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ServoPResponse>
         */
        typedef Ros1Rosdemo_v3ServoPResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ServoP request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ServoP_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ServoP_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ServoP request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ServoP_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ServoP_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ServoP ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ServoP_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ServoP_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ServoP.
     * @details Binds every operation to Ros1Rosdemo_v3ServoPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ServoPBinding> Ros1Rosdemo_v3ServoPClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ServoP.
     * @details Binds every operation to Ros1Rosdemo_v3ServoPBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ServoPBinding> Ros1Rosdemo_v3ServoPServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETARMORIENTATION 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetArmOrientation.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_call
     */
    struct Ros1Rosdemo_v3SetArmOrientationBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetArmOrientation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetArmOrientationRequest>
         */
        typedef Ros1Rosdemo_v3SetArmOrientationRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetArmOrientation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetArmOrientationResponse>
         */
        typedef Ros1Rosdemo_v3SetArmOrientationResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetArmOrientation request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetArmOrientation request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetArmOrientation ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetArmOrientation_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetArmOrientation.
     * @details Binds every operation to Ros1Rosdemo_v3SetArmOrientationBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetArmOrientationBinding> Ros1Rosdemo_v3SetArmOrientationClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetArmOrientation.
     * @details Binds every operation to Ros1Rosdemo_v3SetArmOrientationBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetArmOrientationBinding> Ros1Rosdemo_v3SetArmOrientationServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOILS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetCoils.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetCoils_call
     */
    struct Ros1Rosdemo_v3SetCoilsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetCoilsRequest>
         */
        typedef Ros1Rosdemo_v3SetCoilsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetCoils.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetCoilsResponse>
         */
        typedef Ros1Rosdemo_v3SetCoilsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetCoils request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCoils_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCoils_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetCoils request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCoils_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCoils_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetCoils ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCoils_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCoils_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetCoils.
     * @details Binds every operation to Ros1Rosdemo_v3SetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetCoilsBinding> Ros1Rosdemo_v3SetCoilsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetCoils.
     * @details Binds every operation to Ros1Rosdemo_v3SetCoilsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetCoilsBinding> Ros1Rosdemo_v3SetCoilsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLIDEDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetCollideDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_call
     */
    struct Ros1Rosdemo_v3SetCollideDragBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetCollideDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetCollideDragRequest>
         */
        typedef Ros1Rosdemo_v3SetCollideDragRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetCollideDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetCollideDragResponse>
         */
        typedef Ros1Rosdemo_v3SetCollideDragResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetCollideDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetCollideDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetCollideDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCollideDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetCollideDrag.
     * @details Binds every operation to Ros1Rosdemo_v3SetCollideDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetCollideDragBinding> Ros1Rosdemo_v3SetCollideDragClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetCollideDrag.
     * @details Binds every operation to Ros1Rosdemo_v3SetCollideDragBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetCollideDragBinding> Ros1Rosdemo_v3SetCollideDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETCOLLISIONLEVEL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetCollisionLevel.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_call
     */
    struct Ros1Rosdemo_v3SetCollisionLevelBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetCollisionLevelRequest>
         */
        typedef Ros1Rosdemo_v3SetCollisionLevelRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetCollisionLevel.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetCollisionLevelResponse>
         */
        typedef Ros1Rosdemo_v3SetCollisionLevelResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetCollisionLevel request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetCollisionLevel request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetCollisionLevel ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevel_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetCollisionLevel.
     * @details Binds every operation to Ros1Rosdemo_v3SetCollisionLevelBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetCollisionLevelBinding> Ros1Rosdemo_v3SetCollisionLevelClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetCollisionLevel.
     * @details Binds every operation to Ros1Rosdemo_v3SetCollisionLevelBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetCollisionLevelBinding> Ros1Rosdemo_v3SetCollisionLevelServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETHOLDREGS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetHoldRegs.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_call
     */
    struct Ros1Rosdemo_v3SetHoldRegsBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetHoldRegsRequest>
         */
        typedef Ros1Rosdemo_v3SetHoldRegsRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetHoldRegs.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetHoldRegsResponse>
         */
        typedef Ros1Rosdemo_v3SetHoldRegsResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetHoldRegs request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetHoldRegs request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetHoldRegs ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetHoldRegs_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v3SetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetHoldRegsBinding> Ros1Rosdemo_v3SetHoldRegsClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetHoldRegs.
     * @details Binds every operation to Ros1Rosdemo_v3SetHoldRegsBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetHoldRegsBinding> Ros1Rosdemo_v3SetHoldRegsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETOBSTACLEAVOID 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetObstacleAvoid.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_call
     */
    struct Ros1Rosdemo_v3SetObstacleAvoidBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetObstacleAvoid.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetObstacleAvoidRequest>
         */
        typedef Ros1Rosdemo_v3SetObstacleAvoidRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetObstacleAvoid.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetObstacleAvoidResponse>
         */
        typedef Ros1Rosdemo_v3SetObstacleAvoidResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetObstacleAvoid request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetObstacleAvoid request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetObstacleAvoid ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoid_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetObstacleAvoid.
     * @details Binds every operation to Ros1Rosdemo_v3SetObstacleAvoidBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetObstacleAvoidBinding> Ros1Rosdemo_v3SetObstacleAvoidClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetObstacleAvoid.
     * @details Binds every operation to Ros1Rosdemo_v3SetObstacleAvoidBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetObstacleAvoidBinding> Ros1Rosdemo_v3SetObstacleAvoidServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETPAYLOAD 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetPayload.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetPayload_call
     */
    struct Ros1Rosdemo_v3SetPayloadBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetPayloadRequest>
         */
        typedef Ros1Rosdemo_v3SetPayloadRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetPayload.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetPayloadResponse>
         */
        typedef Ros1Rosdemo_v3SetPayloadResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetPayload request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetPayload_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetPayload_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetPayload request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetPayload_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetPayload_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetPayload ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetPayload_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetPayload_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetPayload.
     * @details Binds every operation to Ros1Rosdemo_v3SetPayloadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetPayloadBinding> Ros1Rosdemo_v3SetPayloadClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetPayload.
     * @details Binds every operation to Ros1Rosdemo_v3SetPayloadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetPayloadBinding> Ros1Rosdemo_v3SetPayloadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETSAFESKIN 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetSafeSkin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_call
     */
    struct Ros1Rosdemo_v3SetSafeSkinBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetSafeSkinRequest>
         */
        typedef Ros1Rosdemo_v3SetSafeSkinRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetSafeSkin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetSafeSkinResponse>
         */
        typedef Ros1Rosdemo_v3SetSafeSkinResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetSafeSkin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetSafeSkin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetSafeSkin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetSafeSkin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetSafeSkin.
     * @details Binds every operation to Ros1Rosdemo_v3SetSafeSkinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetSafeSkinBinding> Ros1Rosdemo_v3SetSafeSkinClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetSafeSkin.
     * @details Binds every operation to Ros1Rosdemo_v3SetSafeSkinBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetSafeSkinBinding> Ros1Rosdemo_v3SetSafeSkinServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINAL485 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetTerminal485.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetTerminal485_call
     */
    struct Ros1Rosdemo_v3SetTerminal485Binding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetTerminal485Request>
         */
        typedef Ros1Rosdemo_v3SetTerminal485Request Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetTerminal485.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetTerminal485Response>
         */
        typedef Ros1Rosdemo_v3SetTerminal485Response Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetTerminal485 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetTerminal485_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetTerminal485_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetTerminal485 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetTerminal485_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetTerminal485_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetTerminal485 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetTerminal485_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetTerminal485_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetTerminal485.
     * @details Binds every operation to Ros1Rosdemo_v3SetTerminal485Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetTerminal485Binding> Ros1Rosdemo_v3SetTerminal485Client;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetTerminal485.
     * @details Binds every operation to Ros1Rosdemo_v3SetTerminal485Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetTerminal485Binding> Ros1Rosdemo_v3SetTerminal485Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SETTERMINALKEYS 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SetTerminalKeys.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_call
     */
    struct Ros1Rosdemo_v3SetTerminalKeysBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SetTerminalKeys.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetTerminalKeysRequest>
         */
        typedef Ros1Rosdemo_v3SetTerminalKeysRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SetTerminalKeys.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SetTerminalKeysResponse>
         */
        typedef Ros1Rosdemo_v3SetTerminalKeysResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SetTerminalKeys request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SetTerminalKeys request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SetTerminalKeys ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeys_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SetTerminalKeys.
     * @details Binds every operation to Ros1Rosdemo_v3SetTerminalKeysBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SetTerminalKeysBinding> Ros1Rosdemo_v3SetTerminalKeysClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SetTerminalKeys.
     * @details Binds every operation to Ros1Rosdemo_v3SetTerminalKeysBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SetTerminalKeysBinding> Ros1Rosdemo_v3SetTerminalKeysServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDFACTOR 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SpeedFactor.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SpeedFactor_call
     */
    struct Ros1Rosdemo_v3SpeedFactorBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SpeedFactorRequest>
         */
        typedef Ros1Rosdemo_v3SpeedFactorRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SpeedFactor.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SpeedFactorResponse>
         */
        typedef Ros1Rosdemo_v3SpeedFactorResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SpeedFactor request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedFactor_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedFactor_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SpeedFactor request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedFactor_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedFactor_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SpeedFactor ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedFactor_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedFactor_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SpeedFactor.
     * @details Binds every operation to Ros1Rosdemo_v3SpeedFactorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SpeedFactorBinding> Ros1Rosdemo_v3SpeedFactorClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SpeedFactor.
     * @details Binds every operation to Ros1Rosdemo_v3SpeedFactorBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SpeedFactorBinding> Ros1Rosdemo_v3SpeedFactorServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDJ 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SpeedJ.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SpeedJ_call
     */
    struct Ros1Rosdemo_v3SpeedJBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SpeedJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SpeedJRequest>
         */
        typedef Ros1Rosdemo_v3SpeedJRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SpeedJ.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SpeedJResponse>
         */
        typedef Ros1Rosdemo_v3SpeedJResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SpeedJ request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedJ_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedJ_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SpeedJ request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedJ_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedJ_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SpeedJ ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedJ_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedJ_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SpeedJ.
     * @details Binds every operation to Ros1Rosdemo_v3SpeedJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SpeedJBinding> Ros1Rosdemo_v3SpeedJClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SpeedJ.
     * @details Binds every operation to Ros1Rosdemo_v3SpeedJBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SpeedJBinding> Ros1Rosdemo_v3SpeedJServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SPEEDL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SpeedL.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SpeedL_call
     */
    struct Ros1Rosdemo_v3SpeedLBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SpeedL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SpeedLRequest>
         */
        typedef Ros1Rosdemo_v3SpeedLRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SpeedL.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SpeedLResponse>
         */
        typedef Ros1Rosdemo_v3SpeedLResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SpeedL request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedL_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedL_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SpeedL request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedL_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedL_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SpeedL ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SpeedL_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SpeedL_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SpeedL.
     * @details Binds every operation to Ros1Rosdemo_v3SpeedLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SpeedLBinding> Ros1Rosdemo_v3SpeedLClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SpeedL.
     * @details Binds every operation to Ros1Rosdemo_v3SpeedLBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SpeedLBinding> Ros1Rosdemo_v3SpeedLServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3StartDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_StartDrag_call
     */
    struct Ros1Rosdemo_v3StartDragBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3StartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartDragRequest>
         */
        typedef Ros1Rosdemo_v3StartDragRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3StartDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartDragResponse>
         */
        typedef Ros1Rosdemo_v3StartDragResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3StartDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_StartDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3StartDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_StartDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3StartDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_StartDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3StartDrag.
     * @details Binds every operation to Ros1Rosdemo_v3StartDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3StartDragBinding> Ros1Rosdemo_v3StartDragClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3StartDrag.
     * @details Binds every operation to Ros1Rosdemo_v3StartDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3StartDragBinding> Ros1Rosdemo_v3StartDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTFCTRACE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3StartFCTrace.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_StartFCTrace_call
     */
    struct Ros1Rosdemo_v3StartFCTraceBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3StartFCTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartFCTraceRequest>
         */
        typedef Ros1Rosdemo_v3StartFCTraceRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3StartFCTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartFCTraceResponse>
         */
        typedef Ros1Rosdemo_v3StartFCTraceResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3StartFCTrace request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_StartFCTrace_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartFCTrace_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3StartFCTrace request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_StartFCTrace_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartFCTrace_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3StartFCTrace ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_StartFCTrace_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartFCTrace_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3StartFCTrace.
     * @details Binds every operation to Ros1Rosdemo_v3StartFCTraceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3StartFCTraceBinding> Ros1Rosdemo_v3StartFCTraceClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3StartFCTrace.
     * @details Binds every operation to Ros1Rosdemo_v3StartFCTraceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3StartFCTraceBinding> Ros1Rosdemo_v3StartFCTraceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTPATH 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3StartPath.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_StartPath_call
     */
    struct Ros1Rosdemo_v3StartPathBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3StartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartPathRequest>
         */
        typedef Ros1Rosdemo_v3StartPathRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3StartPath.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartPathResponse>
         */
        typedef Ros1Rosdemo_v3StartPathResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3StartPath request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_StartPath_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartPath_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3StartPath request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_StartPath_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartPath_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3StartPath ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_StartPath_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartPath_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3StartPath.
     * @details Binds every operation to Ros1Rosdemo_v3StartPathBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3StartPathBinding> Ros1Rosdemo_v3StartPathClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3StartPath.
     * @details Binds every operation to Ros1Rosdemo_v3StartPathBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3StartPathBinding> Ros1Rosdemo_v3StartPathServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STARTTRACE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3StartTrace.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_StartTrace_call
     */
    struct Ros1Rosdemo_v3StartTraceBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3StartTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartTraceRequest>
         */
        typedef Ros1Rosdemo_v3StartTraceRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3StartTrace.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StartTraceResponse>
         */
        typedef Ros1Rosdemo_v3StartTraceResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3StartTrace request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_StartTrace_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartTrace_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3StartTrace request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_StartTrace_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartTrace_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3StartTrace ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_StartTrace_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StartTrace_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3StartTrace.
     * @details Binds every operation to Ros1Rosdemo_v3StartTraceBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3StartTraceBinding> Ros1Rosdemo_v3StartTraceClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3StartTrace.
     * @details Binds every operation to Ros1Rosdemo_v3StartTraceBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3StartTraceBinding> Ros1Rosdemo_v3StartTraceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPDRAG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3StopDrag.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_StopDrag_call
     */
    struct Ros1Rosdemo_v3StopDragBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3StopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StopDragRequest>
         */
        typedef Ros1Rosdemo_v3StopDragRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3StopDrag.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StopDragResponse>
         */
        typedef Ros1Rosdemo_v3StopDragResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3StopDrag request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_StopDrag_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopDrag_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3StopDrag request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_StopDrag_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopDrag_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3StopDrag ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_StopDrag_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopDrag_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3StopDrag.
     * @details Binds every operation to Ros1Rosdemo_v3StopDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3StopDragBinding> Ros1Rosdemo_v3StopDragClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3StopDrag.
     * @details Binds every operation to Ros1Rosdemo_v3StopDragBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3StopDragBinding> Ros1Rosdemo_v3StopDragServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPSCRIPT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3StopScript.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_StopScript_call
     */
    struct Ros1Rosdemo_v3StopScriptBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3StopScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StopScriptRequest>
         */
        typedef Ros1Rosdemo_v3StopScriptRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3StopScript.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StopScriptResponse>
         */
        typedef Ros1Rosdemo_v3StopScriptResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3StopScript request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_StopScript_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopScript_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3StopScript request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_StopScript_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopScript_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3StopScript ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_StopScript_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopScript_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3StopScript.
     * @details Binds every operation to Ros1Rosdemo_v3StopScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3StopScriptBinding> Ros1Rosdemo_v3StopScriptClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3StopScript.
     * @details Binds every operation to Ros1Rosdemo_v3StopScriptBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3StopScriptBinding> Ros1Rosdemo_v3StopScriptServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_STOPMOVEJOG 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3StopmoveJog.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_StopmoveJog_call
     */
    struct Ros1Rosdemo_v3StopmoveJogBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3StopmoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StopmoveJogRequest>
         */
        typedef Ros1Rosdemo_v3StopmoveJogRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3StopmoveJog.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3StopmoveJogResponse>
         */
        typedef Ros1Rosdemo_v3StopmoveJogResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3StopmoveJog request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_StopmoveJog_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopmoveJog_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3StopmoveJog request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_StopmoveJog_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopmoveJog_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3StopmoveJog ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_StopmoveJog_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_StopmoveJog_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3StopmoveJog.
     * @details Binds every operation to Ros1Rosdemo_v3StopmoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3StopmoveJogBinding> Ros1Rosdemo_v3StopmoveJogClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3StopmoveJog.
     * @details Binds every operation to Ros1Rosdemo_v3StopmoveJogBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3StopmoveJogBinding> Ros1Rosdemo_v3StopmoveJogServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNC 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Sync.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Sync_call
     */
    struct Ros1Rosdemo_v3SyncBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Sync.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SyncRequest>
         */
        typedef Ros1Rosdemo_v3SyncRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Sync.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SyncResponse>
         */
        typedef Ros1Rosdemo_v3SyncResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Sync request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Sync_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Sync_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Sync request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Sync_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Sync_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Sync ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Sync_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Sync_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Sync.
     * @details Binds every operation to Ros1Rosdemo_v3SyncBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SyncBinding> Ros1Rosdemo_v3SyncClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Sync.
     * @details Binds every operation to Ros1Rosdemo_v3SyncBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SyncBinding> Ros1Rosdemo_v3SyncServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_SYNCALL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3SyncAll.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_SyncAll_call
     */
    struct Ros1Rosdemo_v3SyncAllBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3SyncAll.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SyncAllRequest>
         */
        typedef Ros1Rosdemo_v3SyncAllRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3SyncAll.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3SyncAllResponse>
         */
        typedef Ros1Rosdemo_v3SyncAllResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3SyncAll request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_SyncAll_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SyncAll_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3SyncAll request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_SyncAll_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_SyncAll_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3SyncAll ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_SyncAll_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_SyncAll_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3SyncAll.
     * @details Binds every operation to Ros1Rosdemo_v3SyncAllBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3SyncAllBinding> Ros1Rosdemo_v3SyncAllClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3SyncAll.
     * @details Binds every operation to Ros1Rosdemo_v3SyncAllBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3SyncAllBinding> Ros1Rosdemo_v3SyncAllServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEED 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3TCPSpeed.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeed_call
     */
    struct Ros1Rosdemo_v3TCPSpeedBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3TCPSpeed.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3TCPSpeedRequest>
         */
        typedef Ros1Rosdemo_v3TCPSpeedRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3TCPSpeed.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3TCPSpeedResponse>
         */
        typedef Ros1Rosdemo_v3TCPSpeedResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3TCPSpeed request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeed_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_TCPSpeed_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3TCPSpeed request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeed_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_TCPSpeed_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3TCPSpeed ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeed_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_TCPSpeed_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3TCPSpeed.
     * @details Binds every operation to Ros1Rosdemo_v3TCPSpeedBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3TCPSpeedBinding> Ros1Rosdemo_v3TCPSpeedClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3TCPSpeed.
     * @details Binds every operation to Ros1Rosdemo_v3TCPSpeedBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3TCPSpeedBinding> Ros1Rosdemo_v3TCPSpeedServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TCPSPEEDEND 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3TCPSpeedEnd.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_call
     */
    struct Ros1Rosdemo_v3TCPSpeedEndBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3TCPSpeedEnd.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3TCPSpeedEndRequest>
         */
        typedef Ros1Rosdemo_v3TCPSpeedEndRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3TCPSpeedEnd.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3TCPSpeedEndResponse>
         */
        typedef Ros1Rosdemo_v3TCPSpeedEndResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3TCPSpeedEnd request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3TCPSpeedEnd request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3TCPSpeedEnd ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEnd_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3TCPSpeedEnd.
     * @details Binds every operation to Ros1Rosdemo_v3TCPSpeedEndBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3TCPSpeedEndBinding> Ros1Rosdemo_v3TCPSpeedEndClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3TCPSpeedEnd.
     * @details Binds every operation to Ros1Rosdemo_v3TCPSpeedEndBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3TCPSpeedEndBinding> Ros1Rosdemo_v3TCPSpeedEndServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOL 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Tool.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Tool_call
     */
    struct Ros1Rosdemo_v3ToolBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Tool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolRequest>
         */
        typedef Ros1Rosdemo_v3ToolRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Tool.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolResponse>
         */
        typedef Ros1Rosdemo_v3ToolResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Tool request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Tool_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Tool_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Tool request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Tool_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Tool_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Tool ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Tool_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Tool_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Tool.
     * @details Binds every operation to Ros1Rosdemo_v3ToolBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ToolBinding> Ros1Rosdemo_v3ToolClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Tool.
     * @details Binds every operation to Ros1Rosdemo_v3ToolBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ToolBinding> Ros1Rosdemo_v3ToolServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLAI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ToolAI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ToolAI_call
     */
    struct Ros1Rosdemo_v3ToolAIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolAIRequest>
         */
        typedef Ros1Rosdemo_v3ToolAIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ToolAI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolAIResponse>
         */
        typedef Ros1Rosdemo_v3ToolAIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ToolAI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolAI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolAI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ToolAI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolAI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolAI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ToolAI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolAI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolAI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ToolAI.
     * @details Binds every operation to Ros1Rosdemo_v3ToolAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ToolAIBinding> Ros1Rosdemo_v3ToolAIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ToolAI.
     * @details Binds every operation to Ros1Rosdemo_v3ToolAIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ToolAIBinding> Ros1Rosdemo_v3ToolAIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDI 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ToolDI.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ToolDI_call
     */
    struct Ros1Rosdemo_v3ToolDIBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolDIRequest>
         */
        typedef Ros1Rosdemo_v3ToolDIRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ToolDI.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolDIResponse>
         */
        typedef Ros1Rosdemo_v3ToolDIResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ToolDI request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDI_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDI_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ToolDI request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDI_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDI_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ToolDI ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDI_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDI_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ToolDI.
     * @details Binds every operation to Ros1Rosdemo_v3ToolDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ToolDIBinding> Ros1Rosdemo_v3ToolDIClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ToolDI.
     * @details Binds every operation to Ros1Rosdemo_v3ToolDIBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ToolDIBinding> Ros1Rosdemo_v3ToolDIServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDO 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ToolDO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ToolDO_call
     */
    struct Ros1Rosdemo_v3ToolDOBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolDORequest>
         */
        typedef Ros1Rosdemo_v3ToolDORequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ToolDO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolDOResponse>
         */
        typedef Ros1Rosdemo_v3ToolDOResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ToolDO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ToolDO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ToolDO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ToolDO.
     * @details Binds every operation to Ros1Rosdemo_v3ToolDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ToolDOBinding> Ros1Rosdemo_v3ToolDOClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ToolDO.
     * @details Binds every operation to Ros1Rosdemo_v3ToolDOBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ToolDOBinding> Ros1Rosdemo_v3ToolDOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_TOOLDOEXECUTE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3ToolDOExecute.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_call
     */
    struct Ros1Rosdemo_v3ToolDOExecuteBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3ToolDOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolDOExecuteRequest>
         */
        typedef Ros1Rosdemo_v3ToolDOExecuteRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3ToolDOExecute.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3ToolDOExecuteResponse>
         */
        typedef Ros1Rosdemo_v3ToolDOExecuteResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3ToolDOExecute request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3ToolDOExecute request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3ToolDOExecute ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_ToolDOExecute_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3ToolDOExecute.
     * @details Binds every operation to Ros1Rosdemo_v3ToolDOExecuteBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3ToolDOExecuteBinding> Ros1Rosdemo_v3ToolDOExecuteClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3ToolDOExecute.
     * @details Binds every operation to Ros1Rosdemo_v3ToolDOExecuteBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3ToolDOExecuteBinding> Ros1Rosdemo_v3ToolDOExecuteServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_USER 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3User.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_User_call
     */
    struct Ros1Rosdemo_v3UserBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3User.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3UserRequest>
         */
        typedef Ros1Rosdemo_v3UserRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3User.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3UserResponse>
         */
        typedef Ros1Rosdemo_v3UserResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3User request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_User_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_User_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3User request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_User_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_User_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3User ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_User_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_User_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3User.
     * @details Binds every operation to Ros1Rosdemo_v3UserBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3UserBinding> Ros1Rosdemo_v3UserClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3User.
     * @details Binds every operation to Ros1Rosdemo_v3UserBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3UserBinding> Ros1Rosdemo_v3UserServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_WAIT 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Wait.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_Wait_call
     */
    struct Ros1Rosdemo_v3WaitBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Wait.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3WaitRequest>
         */
        typedef Ros1Rosdemo_v3WaitRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Wait.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3WaitResponse>
         */
        typedef Ros1Rosdemo_v3WaitResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Wait request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_Wait_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Wait_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Wait request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_Wait_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_Wait_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Wait ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_Wait_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_Wait_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Wait.
     * @details Binds every operation to Ros1Rosdemo_v3WaitBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3WaitBinding> Ros1Rosdemo_v3WaitClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Wait.
     * @details Binds every operation to Ros1Rosdemo_v3WaitBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3WaitBinding> Ros1Rosdemo_v3WaitServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_1_ROSDEMO_V3_PAUSE 1

    /**
     * @brief Exact C operation binding for Ros1Rosdemo_v3Pause.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_1_rosdemo_v3_pause_call
     */
    struct Ros1Rosdemo_v3PauseBinding
    {
        /**
         * @brief Complete request record for Ros1Rosdemo_v3Pause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PauseRequest>
         */
        typedef Ros1Rosdemo_v3PauseRequest Request;
        /**
         * @brief Complete response record for Ros1Rosdemo_v3Pause.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros1Rosdemo_v3PauseResponse>
         */
        typedef Ros1Rosdemo_v3PauseResponse Response;

        /**
         * @brief Issue one complete Ros1Rosdemo_v3Pause request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_1_rosdemo_v3_pause_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_pause_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros1Rosdemo_v3Pause request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_1_rosdemo_v3_pause_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_1_rosdemo_v3_pause_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros1Rosdemo_v3Pause ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_1_rosdemo_v3_pause_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_1_rosdemo_v3_pause_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros1Rosdemo_v3Pause.
     * @details Binds every operation to Ros1Rosdemo_v3PauseBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros1Rosdemo_v3PauseBinding> Ros1Rosdemo_v3PauseClient;
    /**
     * @brief Owning typed service server for Ros1Rosdemo_v3Pause.
     * @details Binds every operation to Ros1Rosdemo_v3PauseBinding. Owners stay stationary in one Guest
     * instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros1Rosdemo_v3PauseBinding> Ros1Rosdemo_v3PauseServer;
#endif
}  // namespace uwvm_custom
