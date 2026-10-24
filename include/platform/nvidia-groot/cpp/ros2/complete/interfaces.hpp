/** @file Complete typed Service/Action owners for the selected C++ profile. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <nvidia-groot/c/ros2/complete/interfaces.h>
#include <nvidia-groot/cpp/ros2/complete/records.hpp>
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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION 1

    /**
     * @brief Exact C operation binding for Ros2Uwvm_groot_bridgeSrvInferAction.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_call
     */
    struct Ros2Uwvm_groot_bridgeSrvInferActionBinding
    {
        /**
         * @brief Complete request record for Ros2Uwvm_groot_bridgeSrvInferAction.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvInferAction_Request>
         */
        typedef Ros2Uwvm_groot_bridgeSrvInferAction_Request Request;
        /**
         * @brief Complete response record for Ros2Uwvm_groot_bridgeSrvInferAction.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvInferAction_Response>
         */
        typedef Ros2Uwvm_groot_bridgeSrvInferAction_Response Response;

        /**
         * @brief Issue one complete Ros2Uwvm_groot_bridgeSrvInferAction request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Uwvm_groot_bridgeSrvInferAction request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Uwvm_groot_bridgeSrvInferAction ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Uwvm_groot_bridgeSrvInferAction.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvInferActionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Uwvm_groot_bridgeSrvInferActionBinding> Ros2Uwvm_groot_bridgeSrvInferActionClient;
    /**
     * @brief Owning typed service server for Ros2Uwvm_groot_bridgeSrvInferAction.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvInferActionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Uwvm_groot_bridgeSrvInferActionBinding> Ros2Uwvm_groot_bridgeSrvInferActionServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION 1

    /**
     * @brief Exact C operation binding for Ros2Uwvm_groot_bridgeSrvBeginObservation.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_call
     */
    struct Ros2Uwvm_groot_bridgeSrvBeginObservationBinding
    {
        /**
         * @brief Complete request record for Ros2Uwvm_groot_bridgeSrvBeginObservation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvBeginObservation_Request>
         */
        typedef Ros2Uwvm_groot_bridgeSrvBeginObservation_Request Request;
        /**
         * @brief Complete response record for Ros2Uwvm_groot_bridgeSrvBeginObservation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvBeginObservation_Response>
         */
        typedef Ros2Uwvm_groot_bridgeSrvBeginObservation_Response Response;

        /**
         * @brief Issue one complete Ros2Uwvm_groot_bridgeSrvBeginObservation request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Uwvm_groot_bridgeSrvBeginObservation request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Uwvm_groot_bridgeSrvBeginObservation ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Uwvm_groot_bridgeSrvBeginObservation.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvBeginObservationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Uwvm_groot_bridgeSrvBeginObservationBinding> Ros2Uwvm_groot_bridgeSrvBeginObservationClient;
    /**
     * @brief Owning typed service server for Ros2Uwvm_groot_bridgeSrvBeginObservation.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvBeginObservationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Uwvm_groot_bridgeSrvBeginObservationBinding> Ros2Uwvm_groot_bridgeSrvBeginObservationServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK 1

    /**
     * @brief Exact C operation binding for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_call
     */
    struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunkBinding
    {
        /**
         * @brief Complete request record for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request>
         */
        typedef Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request Request;
        /**
         * @brief Complete response record for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response>
         */
        typedef Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response Response;

        /**
         * @brief Issue one complete Ros2Uwvm_groot_bridgeSrvWriteRGBChunk request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Uwvm_groot_bridgeSrvWriteRGBChunk request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Uwvm_groot_bridgeSrvWriteRGBChunk ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvWriteRGBChunkBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Uwvm_groot_bridgeSrvWriteRGBChunkBinding> Ros2Uwvm_groot_bridgeSrvWriteRGBChunkClient;
    /**
     * @brief Owning typed service server for Ros2Uwvm_groot_bridgeSrvWriteRGBChunk.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvWriteRGBChunkBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Uwvm_groot_bridgeSrvWriteRGBChunkBinding> Ros2Uwvm_groot_bridgeSrvWriteRGBChunkServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION 1

    /**
     * @brief Exact C operation binding for Ros2Uwvm_groot_bridgeSrvReleaseObservation.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_call
     */
    struct Ros2Uwvm_groot_bridgeSrvReleaseObservationBinding
    {
        /**
         * @brief Complete request record for Ros2Uwvm_groot_bridgeSrvReleaseObservation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request>
         */
        typedef Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request Request;
        /**
         * @brief Complete response record for Ros2Uwvm_groot_bridgeSrvReleaseObservation.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response>
         */
        typedef Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response Response;

        /**
         * @brief Issue one complete Ros2Uwvm_groot_bridgeSrvReleaseObservation request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Uwvm_groot_bridgeSrvReleaseObservation request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Uwvm_groot_bridgeSrvReleaseObservation ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Uwvm_groot_bridgeSrvReleaseObservation.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvReleaseObservationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Uwvm_groot_bridgeSrvReleaseObservationBinding> Ros2Uwvm_groot_bridgeSrvReleaseObservationClient;
    /**
     * @brief Owning typed service server for Ros2Uwvm_groot_bridgeSrvReleaseObservation.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvReleaseObservationBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Uwvm_groot_bridgeSrvReleaseObservationBinding> Ros2Uwvm_groot_bridgeSrvReleaseObservationServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION 1

    /**
     * @brief Exact C operation binding for Ros2Uwvm_groot_bridgeSrvInferUploadedAction.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_call
     */
    struct Ros2Uwvm_groot_bridgeSrvInferUploadedActionBinding
    {
        /**
         * @brief Complete request record for Ros2Uwvm_groot_bridgeSrvInferUploadedAction.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request>
         */
        typedef Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request Request;
        /**
         * @brief Complete response record for Ros2Uwvm_groot_bridgeSrvInferUploadedAction.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response>
         */
        typedef Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response Response;

        /**
         * @brief Issue one complete Ros2Uwvm_groot_bridgeSrvInferUploadedAction request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Uwvm_groot_bridgeSrvInferUploadedAction request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Uwvm_groot_bridgeSrvInferUploadedAction ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Uwvm_groot_bridgeSrvInferUploadedAction.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvInferUploadedActionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Uwvm_groot_bridgeSrvInferUploadedActionBinding> Ros2Uwvm_groot_bridgeSrvInferUploadedActionClient;
    /**
     * @brief Owning typed service server for Ros2Uwvm_groot_bridgeSrvInferUploadedAction.
     * @details Binds every operation to Ros2Uwvm_groot_bridgeSrvInferUploadedActionBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Uwvm_groot_bridgeSrvInferUploadedActionBinding> Ros2Uwvm_groot_bridgeSrvInferUploadedActionServer;
#endif
}  // namespace uwvm_custom
