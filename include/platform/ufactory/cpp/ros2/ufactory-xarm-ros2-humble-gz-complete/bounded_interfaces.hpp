/**
 * @file bounded_interfaces.hpp
 * @brief Bind complete original service/action components to checked C++ client and server owners.
 * @details This ufactory source domain retains every original request, response, goal, feedback and result
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
#include <ufactory/c/ros2/ufactory-xarm-ros2-humble-gz-complete/bounded_interfaces.h>
#include <ufactory/cpp/ros2/ufactory-xarm-ros2-humble-gz-complete/bounded_records.hpp>

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
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvBioGripperCtrl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_call
     */
    struct Ros2Xarm_msgsSrvBioGripperCtrlBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvBioGripperCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request>
         */
        typedef Ros2Xarm_msgsSrvBioGripperCtrl_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvBioGripperCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Response>
         */
        typedef Ros2Xarm_msgsSrvBioGripperCtrl_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvBioGripperCtrl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvBioGripperCtrl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvBioGripperCtrl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvBioGripperCtrl.
     * @details Binds every operation to Ros2Xarm_msgsSrvBioGripperCtrlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvBioGripperCtrlBinding> Ros2Xarm_msgsSrvBioGripperCtrlClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvBioGripperCtrl.
     * @details Binds every operation to Ros2Xarm_msgsSrvBioGripperCtrlBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvBioGripperCtrlBinding> Ros2Xarm_msgsSrvBioGripperCtrlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvBioGripperEnable.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_call
     */
    struct Ros2Xarm_msgsSrvBioGripperEnableBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvBioGripperEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request>
         */
        typedef Ros2Xarm_msgsSrvBioGripperEnable_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvBioGripperEnable.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Response>
         */
        typedef Ros2Xarm_msgsSrvBioGripperEnable_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvBioGripperEnable request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvBioGripperEnable request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvBioGripperEnable ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvBioGripperEnable.
     * @details Binds every operation to Ros2Xarm_msgsSrvBioGripperEnableBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvBioGripperEnableBinding> Ros2Xarm_msgsSrvBioGripperEnableClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvBioGripperEnable.
     * @details Binds every operation to Ros2Xarm_msgsSrvBioGripperEnableBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvBioGripperEnableBinding> Ros2Xarm_msgsSrvBioGripperEnableServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvCall.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_Call_call
     */
    struct Ros2Xarm_msgsSrvCallBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvCall.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvCall_Request>
         */
        typedef Ros2Xarm_msgsSrvCall_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvCall.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvCall_Response>
         */
        typedef Ros2Xarm_msgsSrvCall_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvCall request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_Call_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvCall request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_Call_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvCall ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_Call_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvCall.
     * @details Binds every operation to Ros2Xarm_msgsSrvCallBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvCallBinding> Ros2Xarm_msgsSrvCallClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvCall.
     * @details Binds every operation to Ros2Xarm_msgsSrvCallBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvCallBinding> Ros2Xarm_msgsSrvCallServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTADMITTANCEPARAMS 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvFtAdmittanceParams.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_call
     */
    struct Ros2Xarm_msgsSrvFtAdmittanceParamsBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvFtAdmittanceParams.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtAdmittanceParams_Request>
         */
        typedef Ros2Xarm_msgsSrvFtAdmittanceParams_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvFtAdmittanceParams.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtAdmittanceParams_Response>
         */
        typedef Ros2Xarm_msgsSrvFtAdmittanceParams_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvFtAdmittanceParams request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvFtAdmittanceParams request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvFtAdmittanceParams ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvFtAdmittanceParams.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtAdmittanceParamsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvFtAdmittanceParamsBinding> Ros2Xarm_msgsSrvFtAdmittanceParamsClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvFtAdmittanceParams.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtAdmittanceParamsBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvFtAdmittanceParamsBinding> Ros2Xarm_msgsSrvFtAdmittanceParamsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvFtCaliLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_call
     */
    struct Ros2Xarm_msgsSrvFtCaliLoadBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvFtCaliLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request>
         */
        typedef Ros2Xarm_msgsSrvFtCaliLoad_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvFtCaliLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Response>
         */
        typedef Ros2Xarm_msgsSrvFtCaliLoad_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvFtCaliLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvFtCaliLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvFtCaliLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvFtCaliLoad.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtCaliLoadBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvFtCaliLoadBinding> Ros2Xarm_msgsSrvFtCaliLoadClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvFtCaliLoad.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtCaliLoadBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvFtCaliLoadBinding> Ros2Xarm_msgsSrvFtCaliLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvFtForceConfig.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_call
     */
    struct Ros2Xarm_msgsSrvFtForceConfigBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvFtForceConfig.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Request>
         */
        typedef Ros2Xarm_msgsSrvFtForceConfig_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvFtForceConfig.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Response>
         */
        typedef Ros2Xarm_msgsSrvFtForceConfig_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvFtForceConfig request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvFtForceConfig request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvFtForceConfig ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvFtForceConfig.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtForceConfigBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvFtForceConfigBinding> Ros2Xarm_msgsSrvFtForceConfigClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvFtForceConfig.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtForceConfigBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvFtForceConfigBinding> Ros2Xarm_msgsSrvFtForceConfigServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPARAMS 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvFtForceParams.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_call
     */
    struct Ros2Xarm_msgsSrvFtForceParamsBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvFtForceParams.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceParams_Request>
         */
        typedef Ros2Xarm_msgsSrvFtForceParams_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvFtForceParams.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceParams_Response>
         */
        typedef Ros2Xarm_msgsSrvFtForceParams_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvFtForceParams request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvFtForceParams request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvFtForceParams ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvFtForceParams.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtForceParamsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvFtForceParamsBinding> Ros2Xarm_msgsSrvFtForceParamsClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvFtForceParams.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtForceParamsBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvFtForceParamsBinding> Ros2Xarm_msgsSrvFtForceParamsServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvFtForcePid.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_call
     */
    struct Ros2Xarm_msgsSrvFtForcePidBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvFtForcePid.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Request>
         */
        typedef Ros2Xarm_msgsSrvFtForcePid_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvFtForcePid.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Response>
         */
        typedef Ros2Xarm_msgsSrvFtForcePid_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvFtForcePid request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvFtForcePid request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvFtForcePid ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvFtForcePid.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtForcePidBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvFtForcePidBinding> Ros2Xarm_msgsSrvFtForcePidClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvFtForcePid.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtForcePidBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvFtForcePidBinding> Ros2Xarm_msgsSrvFtForcePidServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvFtImpedance.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_call
     */
    struct Ros2Xarm_msgsSrvFtImpedanceBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvFtImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Request>
         */
        typedef Ros2Xarm_msgsSrvFtImpedance_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvFtImpedance.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Response>
         */
        typedef Ros2Xarm_msgsSrvFtImpedance_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvFtImpedance request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvFtImpedance request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvFtImpedance ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvFtImpedance.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtImpedanceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvFtImpedanceBinding> Ros2Xarm_msgsSrvFtImpedanceClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvFtImpedance.
     * @details Binds every operation to Ros2Xarm_msgsSrvFtImpedanceBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvFtImpedanceBinding> Ros2Xarm_msgsSrvFtImpedanceServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetAnalogIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_call
     */
    struct Ros2Xarm_msgsSrvGetAnalogIOBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Request>
         */
        typedef Ros2Xarm_msgsSrvGetAnalogIO_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Response>
         */
        typedef Ros2Xarm_msgsSrvGetAnalogIO_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetAnalogIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetAnalogIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetAnalogIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetAnalogIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetAnalogIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetAnalogIOBinding> Ros2Xarm_msgsSrvGetAnalogIOClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetAnalogIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetAnalogIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetAnalogIOBinding> Ros2Xarm_msgsSrvGetAnalogIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_call
     */
    struct Ros2Xarm_msgsSrvGetDigitalIOBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Request>
         */
        typedef Ros2Xarm_msgsSrvGetDigitalIO_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Response>
         */
        typedef Ros2Xarm_msgsSrvGetDigitalIO_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetDigitalIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetDigitalIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetDigitalIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetDigitalIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetDigitalIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetDigitalIOBinding> Ros2Xarm_msgsSrvGetDigitalIOClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetDigitalIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetDigitalIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetDigitalIOBinding> Ros2Xarm_msgsSrvGetDigitalIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetFloat32.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_call
     */
    struct Ros2Xarm_msgsSrvGetFloat32Binding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetFloat32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Request>
         */
        typedef Ros2Xarm_msgsSrvGetFloat32_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetFloat32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Response>
         */
        typedef Ros2Xarm_msgsSrvGetFloat32_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetFloat32 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetFloat32 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetFloat32 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetFloat32.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetFloat32Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetFloat32Binding> Ros2Xarm_msgsSrvGetFloat32Client;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetFloat32.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetFloat32Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetFloat32Binding> Ros2Xarm_msgsSrvGetFloat32Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetFloat32List.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_call
     */
    struct Ros2Xarm_msgsSrvGetFloat32ListBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetFloat32List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Request>
         */
        typedef Ros2Xarm_msgsSrvGetFloat32List_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetFloat32List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Response>
         */
        typedef Ros2Xarm_msgsSrvGetFloat32List_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetFloat32List request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetFloat32List request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetFloat32List ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetFloat32List.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetFloat32ListBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetFloat32ListBinding> Ros2Xarm_msgsSrvGetFloat32ListClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetFloat32List.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetFloat32ListBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetFloat32ListBinding> Ros2Xarm_msgsSrvGetFloat32ListServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetInt16.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_call
     */
    struct Ros2Xarm_msgsSrvGetInt16Binding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Request>
         */
        typedef Ros2Xarm_msgsSrvGetInt16_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Response>
         */
        typedef Ros2Xarm_msgsSrvGetInt16_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetInt16 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetInt16 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetInt16 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetInt16.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt16Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetInt16Binding> Ros2Xarm_msgsSrvGetInt16Client;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetInt16.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt16Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetInt16Binding> Ros2Xarm_msgsSrvGetInt16Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetInt16List.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_call
     */
    struct Ros2Xarm_msgsSrvGetInt16ListBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetInt16List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Request>
         */
        typedef Ros2Xarm_msgsSrvGetInt16List_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetInt16List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Response>
         */
        typedef Ros2Xarm_msgsSrvGetInt16List_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetInt16List request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetInt16List request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetInt16List ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetInt16List.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt16ListBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetInt16ListBinding> Ros2Xarm_msgsSrvGetInt16ListClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetInt16List.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt16ListBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetInt16ListBinding> Ros2Xarm_msgsSrvGetInt16ListServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetInt32.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_call
     */
    struct Ros2Xarm_msgsSrvGetInt32Binding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetInt32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Request>
         */
        typedef Ros2Xarm_msgsSrvGetInt32_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetInt32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Response>
         */
        typedef Ros2Xarm_msgsSrvGetInt32_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetInt32 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetInt32 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetInt32 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetInt32.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetInt32Binding> Ros2Xarm_msgsSrvGetInt32Client;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetInt32.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetInt32Binding> Ros2Xarm_msgsSrvGetInt32Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetInt32ByType.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_call
     */
    struct Ros2Xarm_msgsSrvGetInt32ByTypeBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetInt32ByType.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Request>
         */
        typedef Ros2Xarm_msgsSrvGetInt32ByType_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetInt32ByType.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Response>
         */
        typedef Ros2Xarm_msgsSrvGetInt32ByType_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetInt32ByType request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetInt32ByType request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetInt32ByType ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetInt32ByType.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt32ByTypeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetInt32ByTypeBinding> Ros2Xarm_msgsSrvGetInt32ByTypeClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetInt32ByType.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetInt32ByTypeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetInt32ByTypeBinding> Ros2Xarm_msgsSrvGetInt32ByTypeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGetSetModbusData.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_call
     */
    struct Ros2Xarm_msgsSrvGetSetModbusDataBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGetSetModbusData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request>
         */
        typedef Ros2Xarm_msgsSrvGetSetModbusData_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGetSetModbusData.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Response>
         */
        typedef Ros2Xarm_msgsSrvGetSetModbusData_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGetSetModbusData request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGetSetModbusData request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGetSetModbusData ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGetSetModbusData.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetSetModbusDataBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGetSetModbusDataBinding> Ros2Xarm_msgsSrvGetSetModbusDataClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGetSetModbusData.
     * @details Binds every operation to Ros2Xarm_msgsSrvGetSetModbusDataBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGetSetModbusDataBinding> Ros2Xarm_msgsSrvGetSetModbusDataServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvGripperMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_call
     */
    struct Ros2Xarm_msgsSrvGripperMoveBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvGripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request>
         */
        typedef Ros2Xarm_msgsSrvGripperMove_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvGripperMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Response>
         */
        typedef Ros2Xarm_msgsSrvGripperMove_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvGripperMove request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvGripperMove request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvGripperMove ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvGripperMove.
     * @details Binds every operation to Ros2Xarm_msgsSrvGripperMoveBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvGripperMoveBinding> Ros2Xarm_msgsSrvGripperMoveClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvGripperMove.
     * @details Binds every operation to Ros2Xarm_msgsSrvGripperMoveBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvGripperMoveBinding> Ros2Xarm_msgsSrvGripperMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvIdenLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_call
     */
    struct Ros2Xarm_msgsSrvIdenLoadBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvIdenLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request>
         */
        typedef Ros2Xarm_msgsSrvIdenLoad_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvIdenLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Response>
         */
        typedef Ros2Xarm_msgsSrvIdenLoad_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvIdenLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvIdenLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvIdenLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvIdenLoad.
     * @details Binds every operation to Ros2Xarm_msgsSrvIdenLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvIdenLoadBinding> Ros2Xarm_msgsSrvIdenLoadClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvIdenLoad.
     * @details Binds every operation to Ros2Xarm_msgsSrvIdenLoadBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvIdenLoadBinding> Ros2Xarm_msgsSrvIdenLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORBACKORIGIN 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvLinearMotorBackOrigin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_call
     */
    struct Ros2Xarm_msgsSrvLinearMotorBackOriginBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvLinearMotorBackOrigin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request>
         */
        typedef Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvLinearMotorBackOrigin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response>
         */
        typedef Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvLinearMotorBackOrigin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvLinearMotorBackOrigin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvLinearMotorBackOrigin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvLinearMotorBackOrigin.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearMotorBackOriginBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvLinearMotorBackOriginBinding> Ros2Xarm_msgsSrvLinearMotorBackOriginClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvLinearMotorBackOrigin.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearMotorBackOriginBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvLinearMotorBackOriginBinding> Ros2Xarm_msgsSrvLinearMotorBackOriginServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARMOTORSETPOS 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvLinearMotorSetPos.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_call
     */
    struct Ros2Xarm_msgsSrvLinearMotorSetPosBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvLinearMotorSetPos.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearMotorSetPos_Request>
         */
        typedef Ros2Xarm_msgsSrvLinearMotorSetPos_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvLinearMotorSetPos.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearMotorSetPos_Response>
         */
        typedef Ros2Xarm_msgsSrvLinearMotorSetPos_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvLinearMotorSetPos request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvLinearMotorSetPos request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvLinearMotorSetPos ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvLinearMotorSetPos.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearMotorSetPosBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvLinearMotorSetPosBinding> Ros2Xarm_msgsSrvLinearMotorSetPosClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvLinearMotorSetPos.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearMotorSetPosBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvLinearMotorSetPosBinding> Ros2Xarm_msgsSrvLinearMotorSetPosServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvLinearTrackBackOrigin.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_call
     */
    struct Ros2Xarm_msgsSrvLinearTrackBackOriginBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvLinearTrackBackOrigin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request>
         */
        typedef Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvLinearTrackBackOrigin.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response>
         */
        typedef Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvLinearTrackBackOrigin request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvLinearTrackBackOrigin request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvLinearTrackBackOrigin ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvLinearTrackBackOrigin.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearTrackBackOriginBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvLinearTrackBackOriginBinding> Ros2Xarm_msgsSrvLinearTrackBackOriginClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvLinearTrackBackOrigin.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearTrackBackOriginBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvLinearTrackBackOriginBinding> Ros2Xarm_msgsSrvLinearTrackBackOriginServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvLinearTrackSetPos.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_call
     */
    struct Ros2Xarm_msgsSrvLinearTrackSetPosBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvLinearTrackSetPos.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request>
         */
        typedef Ros2Xarm_msgsSrvLinearTrackSetPos_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvLinearTrackSetPos.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Response>
         */
        typedef Ros2Xarm_msgsSrvLinearTrackSetPos_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvLinearTrackSetPos request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvLinearTrackSetPos request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvLinearTrackSetPos ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvLinearTrackSetPos.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearTrackSetPosBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvLinearTrackSetPosBinding> Ros2Xarm_msgsSrvLinearTrackSetPosClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvLinearTrackSetPos.
     * @details Binds every operation to Ros2Xarm_msgsSrvLinearTrackSetPosBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvLinearTrackSetPosBinding> Ros2Xarm_msgsSrvLinearTrackSetPosServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvMoveCartesian.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_call
     */
    struct Ros2Xarm_msgsSrvMoveCartesianBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvMoveCartesian.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request>
         */
        typedef Ros2Xarm_msgsSrvMoveCartesian_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvMoveCartesian.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Response>
         */
        typedef Ros2Xarm_msgsSrvMoveCartesian_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvMoveCartesian request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvMoveCartesian request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvMoveCartesian ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvMoveCartesian.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveCartesianBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvMoveCartesianBinding> Ros2Xarm_msgsSrvMoveCartesianClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvMoveCartesian.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveCartesianBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvMoveCartesianBinding> Ros2Xarm_msgsSrvMoveCartesianServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvMoveCircle.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_call
     */
    struct Ros2Xarm_msgsSrvMoveCircleBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvMoveCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request>
         */
        typedef Ros2Xarm_msgsSrvMoveCircle_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvMoveCircle.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Response>
         */
        typedef Ros2Xarm_msgsSrvMoveCircle_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvMoveCircle request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvMoveCircle request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvMoveCircle ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvMoveCircle.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveCircleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvMoveCircleBinding> Ros2Xarm_msgsSrvMoveCircleClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvMoveCircle.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveCircleBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvMoveCircleBinding> Ros2Xarm_msgsSrvMoveCircleServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvMoveHome.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_call
     */
    struct Ros2Xarm_msgsSrvMoveHomeBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvMoveHome.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request>
         */
        typedef Ros2Xarm_msgsSrvMoveHome_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvMoveHome.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Response>
         */
        typedef Ros2Xarm_msgsSrvMoveHome_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvMoveHome request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvMoveHome request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvMoveHome ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvMoveHome.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveHomeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvMoveHomeBinding> Ros2Xarm_msgsSrvMoveHomeClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvMoveHome.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveHomeBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvMoveHomeBinding> Ros2Xarm_msgsSrvMoveHomeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvMoveJoint.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_call
     */
    struct Ros2Xarm_msgsSrvMoveJointBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvMoveJoint.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request>
         */
        typedef Ros2Xarm_msgsSrvMoveJoint_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvMoveJoint.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Response>
         */
        typedef Ros2Xarm_msgsSrvMoveJoint_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvMoveJoint request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvMoveJoint request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvMoveJoint ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvMoveJoint.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveJointBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvMoveJointBinding> Ros2Xarm_msgsSrvMoveJointClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvMoveJoint.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveJointBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvMoveJointBinding> Ros2Xarm_msgsSrvMoveJointServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvMoveVelocity.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_call
     */
    struct Ros2Xarm_msgsSrvMoveVelocityBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvMoveVelocity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request>
         */
        typedef Ros2Xarm_msgsSrvMoveVelocity_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvMoveVelocity.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Response>
         */
        typedef Ros2Xarm_msgsSrvMoveVelocity_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvMoveVelocity request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvMoveVelocity request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvMoveVelocity ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvMoveVelocity.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveVelocityBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvMoveVelocityBinding> Ros2Xarm_msgsSrvMoveVelocityClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvMoveVelocity.
     * @details Binds every operation to Ros2Xarm_msgsSrvMoveVelocityBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvMoveVelocityBinding> Ros2Xarm_msgsSrvMoveVelocityServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvPlanExec.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_call
     */
    struct Ros2Xarm_msgsSrvPlanExecBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvPlanExec.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Request>
         */
        typedef Ros2Xarm_msgsSrvPlanExec_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvPlanExec.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Response>
         */
        typedef Ros2Xarm_msgsSrvPlanExec_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvPlanExec request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvPlanExec request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvPlanExec ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvPlanExec.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanExecBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvPlanExecBinding> Ros2Xarm_msgsSrvPlanExecClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvPlanExec.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanExecBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvPlanExecBinding> Ros2Xarm_msgsSrvPlanExecServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvPlanJoint.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_call
     */
    struct Ros2Xarm_msgsSrvPlanJointBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvPlanJoint.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Request>
         */
        typedef Ros2Xarm_msgsSrvPlanJoint_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvPlanJoint.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Response>
         */
        typedef Ros2Xarm_msgsSrvPlanJoint_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvPlanJoint request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvPlanJoint request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvPlanJoint ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvPlanJoint.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanJointBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvPlanJointBinding> Ros2Xarm_msgsSrvPlanJointClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvPlanJoint.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanJointBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvPlanJointBinding> Ros2Xarm_msgsSrvPlanJointServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvPlanPose.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_call
     */
    struct Ros2Xarm_msgsSrvPlanPoseBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvPlanPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request>
         */
        typedef Ros2Xarm_msgsSrvPlanPose_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvPlanPose.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Response>
         */
        typedef Ros2Xarm_msgsSrvPlanPose_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvPlanPose request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvPlanPose request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvPlanPose ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvPlanPose.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvPlanPoseBinding> Ros2Xarm_msgsSrvPlanPoseClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvPlanPose.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanPoseBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvPlanPoseBinding> Ros2Xarm_msgsSrvPlanPoseServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvPlanSingleStraight.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_call
     */
    struct Ros2Xarm_msgsSrvPlanSingleStraightBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvPlanSingleStraight.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request>
         */
        typedef Ros2Xarm_msgsSrvPlanSingleStraight_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvPlanSingleStraight.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Response>
         */
        typedef Ros2Xarm_msgsSrvPlanSingleStraight_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvPlanSingleStraight request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvPlanSingleStraight request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvPlanSingleStraight ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvPlanSingleStraight.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanSingleStraightBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvPlanSingleStraightBinding> Ros2Xarm_msgsSrvPlanSingleStraightClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvPlanSingleStraight.
     * @details Binds every operation to Ros2Xarm_msgsSrvPlanSingleStraightBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvPlanSingleStraightBinding> Ros2Xarm_msgsSrvPlanSingleStraightServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvRobotiqActivate.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_call
     */
    struct Ros2Xarm_msgsSrvRobotiqActivateBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvRobotiqActivate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request>
         */
        typedef Ros2Xarm_msgsSrvRobotiqActivate_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvRobotiqActivate.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Response>
         */
        typedef Ros2Xarm_msgsSrvRobotiqActivate_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvRobotiqActivate request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvRobotiqActivate request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvRobotiqActivate ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvRobotiqActivate.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqActivateBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvRobotiqActivateBinding> Ros2Xarm_msgsSrvRobotiqActivateClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvRobotiqActivate.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqActivateBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvRobotiqActivateBinding> Ros2Xarm_msgsSrvRobotiqActivateServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvRobotiqGetStatus.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_call
     */
    struct Ros2Xarm_msgsSrvRobotiqGetStatusBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvRobotiqGetStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request>
         */
        typedef Ros2Xarm_msgsSrvRobotiqGetStatus_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvRobotiqGetStatus.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Response>
         */
        typedef Ros2Xarm_msgsSrvRobotiqGetStatus_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvRobotiqGetStatus request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvRobotiqGetStatus request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvRobotiqGetStatus ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvRobotiqGetStatus.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqGetStatusBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvRobotiqGetStatusBinding> Ros2Xarm_msgsSrvRobotiqGetStatusClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvRobotiqGetStatus.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqGetStatusBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvRobotiqGetStatusBinding> Ros2Xarm_msgsSrvRobotiqGetStatusServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvRobotiqMove.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_call
     */
    struct Ros2Xarm_msgsSrvRobotiqMoveBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvRobotiqMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request>
         */
        typedef Ros2Xarm_msgsSrvRobotiqMove_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvRobotiqMove.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Response>
         */
        typedef Ros2Xarm_msgsSrvRobotiqMove_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvRobotiqMove request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvRobotiqMove request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvRobotiqMove ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvRobotiqMove.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqMoveBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvRobotiqMoveBinding> Ros2Xarm_msgsSrvRobotiqMoveClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvRobotiqMove.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqMoveBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvRobotiqMoveBinding> Ros2Xarm_msgsSrvRobotiqMoveServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvRobotiqReset.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_call
     */
    struct Ros2Xarm_msgsSrvRobotiqResetBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvRobotiqReset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Request>
         */
        typedef Ros2Xarm_msgsSrvRobotiqReset_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvRobotiqReset.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Response>
         */
        typedef Ros2Xarm_msgsSrvRobotiqReset_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvRobotiqReset request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvRobotiqReset request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvRobotiqReset ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvRobotiqReset.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqResetBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvRobotiqResetBinding> Ros2Xarm_msgsSrvRobotiqResetClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvRobotiqReset.
     * @details Binds every operation to Ros2Xarm_msgsSrvRobotiqResetBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvRobotiqResetBinding> Ros2Xarm_msgsSrvRobotiqResetServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetAnalogIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_call
     */
    struct Ros2Xarm_msgsSrvSetAnalogIOBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Request>
         */
        typedef Ros2Xarm_msgsSrvSetAnalogIO_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetAnalogIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Response>
         */
        typedef Ros2Xarm_msgsSrvSetAnalogIO_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetAnalogIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetAnalogIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetAnalogIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetAnalogIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetAnalogIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetAnalogIOBinding> Ros2Xarm_msgsSrvSetAnalogIOClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetAnalogIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetAnalogIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetAnalogIOBinding> Ros2Xarm_msgsSrvSetAnalogIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetDigitalIO.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_call
     */
    struct Ros2Xarm_msgsSrvSetDigitalIOBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request>
         */
        typedef Ros2Xarm_msgsSrvSetDigitalIO_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetDigitalIO.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Response>
         */
        typedef Ros2Xarm_msgsSrvSetDigitalIO_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetDigitalIO request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetDigitalIO request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetDigitalIO ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetDigitalIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetDigitalIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetDigitalIOBinding> Ros2Xarm_msgsSrvSetDigitalIOClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetDigitalIO.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetDigitalIOBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetDigitalIOBinding> Ros2Xarm_msgsSrvSetDigitalIOServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetFloat32.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_call
     */
    struct Ros2Xarm_msgsSrvSetFloat32Binding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetFloat32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Request>
         */
        typedef Ros2Xarm_msgsSrvSetFloat32_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetFloat32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Response>
         */
        typedef Ros2Xarm_msgsSrvSetFloat32_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetFloat32 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetFloat32 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetFloat32 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetFloat32.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetFloat32Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetFloat32Binding> Ros2Xarm_msgsSrvSetFloat32Client;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetFloat32.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetFloat32Binding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetFloat32Binding> Ros2Xarm_msgsSrvSetFloat32Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetFloat32List.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_call
     */
    struct Ros2Xarm_msgsSrvSetFloat32ListBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetFloat32List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Request>
         */
        typedef Ros2Xarm_msgsSrvSetFloat32List_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetFloat32List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Response>
         */
        typedef Ros2Xarm_msgsSrvSetFloat32List_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetFloat32List request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetFloat32List request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetFloat32List ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetFloat32List.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetFloat32ListBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetFloat32ListBinding> Ros2Xarm_msgsSrvSetFloat32ListClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetFloat32List.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetFloat32ListBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetFloat32ListBinding> Ros2Xarm_msgsSrvSetFloat32ListServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetInt16.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_call
     */
    struct Ros2Xarm_msgsSrvSetInt16Binding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Request>
         */
        typedef Ros2Xarm_msgsSrvSetInt16_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetInt16.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Response>
         */
        typedef Ros2Xarm_msgsSrvSetInt16_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetInt16 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetInt16 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetInt16 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetInt16.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt16Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetInt16Binding> Ros2Xarm_msgsSrvSetInt16Client;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetInt16.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt16Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetInt16Binding> Ros2Xarm_msgsSrvSetInt16Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetInt16ById.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_call
     */
    struct Ros2Xarm_msgsSrvSetInt16ByIdBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetInt16ById.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Request>
         */
        typedef Ros2Xarm_msgsSrvSetInt16ById_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetInt16ById.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Response>
         */
        typedef Ros2Xarm_msgsSrvSetInt16ById_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetInt16ById request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetInt16ById request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetInt16ById ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetInt16ById.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt16ByIdBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetInt16ByIdBinding> Ros2Xarm_msgsSrvSetInt16ByIdClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetInt16ById.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt16ByIdBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetInt16ByIdBinding> Ros2Xarm_msgsSrvSetInt16ByIdServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetInt16List.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_call
     */
    struct Ros2Xarm_msgsSrvSetInt16ListBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetInt16List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Request>
         */
        typedef Ros2Xarm_msgsSrvSetInt16List_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetInt16List.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Response>
         */
        typedef Ros2Xarm_msgsSrvSetInt16List_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetInt16List request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetInt16List request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetInt16List ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetInt16List.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt16ListBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetInt16ListBinding> Ros2Xarm_msgsSrvSetInt16ListClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetInt16List.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt16ListBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetInt16ListBinding> Ros2Xarm_msgsSrvSetInt16ListServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetInt32.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_call
     */
    struct Ros2Xarm_msgsSrvSetInt32Binding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetInt32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Request>
         */
        typedef Ros2Xarm_msgsSrvSetInt32_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetInt32.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Response>
         */
        typedef Ros2Xarm_msgsSrvSetInt32_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetInt32 request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetInt32 request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetInt32 ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetInt32.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetInt32Binding> Ros2Xarm_msgsSrvSetInt32Client;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetInt32.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt32Binding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetInt32Binding> Ros2Xarm_msgsSrvSetInt32Server;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetInt32ByType.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_call
     */
    struct Ros2Xarm_msgsSrvSetInt32ByTypeBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetInt32ByType.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Request>
         */
        typedef Ros2Xarm_msgsSrvSetInt32ByType_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetInt32ByType.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Response>
         */
        typedef Ros2Xarm_msgsSrvSetInt32ByType_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetInt32ByType request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetInt32ByType request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetInt32ByType ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetInt32ByType.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt32ByTypeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetInt32ByTypeBinding> Ros2Xarm_msgsSrvSetInt32ByTypeClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetInt32ByType.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetInt32ByTypeBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetInt32ByTypeBinding> Ros2Xarm_msgsSrvSetInt32ByTypeServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetModbusTimeout.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_call
     */
    struct Ros2Xarm_msgsSrvSetModbusTimeoutBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetModbusTimeout.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request>
         */
        typedef Ros2Xarm_msgsSrvSetModbusTimeout_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetModbusTimeout.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Response>
         */
        typedef Ros2Xarm_msgsSrvSetModbusTimeout_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetModbusTimeout request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetModbusTimeout request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetModbusTimeout ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetModbusTimeout.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetModbusTimeoutBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetModbusTimeoutBinding> Ros2Xarm_msgsSrvSetModbusTimeoutClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetModbusTimeout.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetModbusTimeoutBinding. Owners stay stationary
     * in one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetModbusTimeoutBinding> Ros2Xarm_msgsSrvSetModbusTimeoutServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvSetTcpLoad.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_call
     */
    struct Ros2Xarm_msgsSrvSetTcpLoadBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvSetTcpLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Request>
         */
        typedef Ros2Xarm_msgsSrvSetTcpLoad_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvSetTcpLoad.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Response>
         */
        typedef Ros2Xarm_msgsSrvSetTcpLoad_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvSetTcpLoad request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvSetTcpLoad request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvSetTcpLoad ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvSetTcpLoad.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetTcpLoadBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvSetTcpLoadBinding> Ros2Xarm_msgsSrvSetTcpLoadClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvSetTcpLoad.
     * @details Binds every operation to Ros2Xarm_msgsSrvSetTcpLoadBinding. Owners stay stationary in
     * one Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared
     * state is caller-serialized; callbacks execute only when the caller polls, never on a hidden
     * thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvSetTcpLoadBinding> Ros2Xarm_msgsSrvSetTcpLoadServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvTrajCtrl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_call
     */
    struct Ros2Xarm_msgsSrvTrajCtrlBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvTrajCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request>
         */
        typedef Ros2Xarm_msgsSrvTrajCtrl_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvTrajCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Response>
         */
        typedef Ros2Xarm_msgsSrvTrajCtrl_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvTrajCtrl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvTrajCtrl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvTrajCtrl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvTrajCtrl.
     * @details Binds every operation to Ros2Xarm_msgsSrvTrajCtrlBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvTrajCtrlBinding> Ros2Xarm_msgsSrvTrajCtrlClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvTrajCtrl.
     * @details Binds every operation to Ros2Xarm_msgsSrvTrajCtrlBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvTrajCtrlBinding> Ros2Xarm_msgsSrvTrajCtrlServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvTrajPlay.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_call
     */
    struct Ros2Xarm_msgsSrvTrajPlayBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvTrajPlay.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request>
         */
        typedef Ros2Xarm_msgsSrvTrajPlay_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvTrajPlay.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Response>
         */
        typedef Ros2Xarm_msgsSrvTrajPlay_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvTrajPlay request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvTrajPlay request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvTrajPlay ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvTrajPlay.
     * @details Binds every operation to Ros2Xarm_msgsSrvTrajPlayBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvTrajPlayBinding> Ros2Xarm_msgsSrvTrajPlayClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvTrajPlay.
     * @details Binds every operation to Ros2Xarm_msgsSrvTrajPlayBinding. Owners stay stationary in one
     * Guest instance and are not copyable. Explicit Host alias grants remain necessary. Shared state is
     * caller-serialized; callbacks execute only when the caller polls, never on a hidden thread.
     * Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvTrajPlayBinding> Ros2Xarm_msgsSrvTrajPlayServer;
#endif
#ifndef ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL
# define ROSWASM_CPP_INTERFACE_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL 1

    /**
     * @brief Exact C operation binding for Ros2Xarm_msgsSrvVacuumGripperCtrl.
     * @details Static operations preserve the generated full-field C codec and native identity. Calls
     * are synchronous and never automatically replayed. Owners remain in their Guest instance; callers
     * serialize access to shared capability/bundle state. C++98 and newer are supported.
     * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_call
     */
    struct Ros2Xarm_msgsSrvVacuumGripperCtrlBinding
    {
        /**
         * @brief Complete request record for Ros2Xarm_msgsSrvVacuumGripperCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request>
         */
        typedef Ros2Xarm_msgsSrvVacuumGripperCtrl_Request Request;
        /**
         * @brief Complete response record for Ros2Xarm_msgsSrvVacuumGripperCtrl.
         * @details This is the generated owning bounded record, including its declared fields and
         * capacities. No endpoint is opened by naming the type; validators/codecs define its admitted
         * representation.
         * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Response>
         */
        typedef Ros2Xarm_msgsSrvVacuumGripperCtrl_Response Response;

        /**
         * @brief Issue one complete Ros2Xarm_msgsSrvVacuumGripperCtrl request.
         * @details Encodes before importing. A valid exact response commits to the destination; any refusal
         * or malformed/trailing reply leaves it unchanged. Requires the exact independently granted
         * service.call alias. Transport failure may follow an external effect; do not retry implicitly.
         * Source/destination must not overlap owner state.
         * @param[in] cap Live instance-owned service-call capability and stable context.
         * @param[in] request Complete request borrowed for this call.
         * @param[in,out] response Disjoint owning response; unchanged on failure.
         * @return Actual result; error zero only after complete response validation. Nonzero includes local
         * validation and Host policy/transport failures.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_call
         */
        static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_call(cap, &request, &response);
        }

        /**
         * @brief Poll one incoming Ros2Xarm_msgsSrvVacuumGripperCtrl request.
         * @details Uses the already activated advertise subscription. Empty input returns UWVM_ROS_AGAIN
         * rather than invoking a handler or waiting. A nonzero ticket and decoded request commit together
         * only after exact framing. No clock, thread or automatic pump is created.
         * @param[in] cap Live granted service-advertise capability.
         * @param[in,out] ticket Receives the nonzero request ticket on success; not a handle.
         * @param[in,out] request Disjoint destination; unchanged on refusal.
         * @return Actual polling result; idle/error preserves both outputs. Invalid framing is
         * UWVM_ROS_INVALID.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_poll
         */
        static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_poll(cap, &ticket, &request);
        }

        /**
         * @brief Respond once to one live Ros2Xarm_msgsSrvVacuumGripperCtrl ticket.
         * @details Requires the separate service.respond alias, correlated ticket, valid response and Host
         * deadline. Validates the empty acknowledgement; an invalid acknowledgement may follow an admitted
         * native response, so a failure is never automatically replayed.
         * @param[in] cap Live independently granted response capability.
         * @param[in] ticket Nonzero ticket returned by the matching server poll.
         * @param[in] response Complete response borrowed synchronously.
         * @return Actual response result; zero requires a validated zero-byte acknowledgement.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_respond
         */
        static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)
        {
            return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_respond(cap, ticket, &response);
        }
    };

    /**
     * @brief Owning typed service client for Ros2Xarm_msgsSrvVacuumGripperCtrl.
     * @details Binds every operation to Ros2Xarm_msgsSrvVacuumGripperCtrlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceClient
     */
    typedef ::roswasmcpp::vendor_detail::ServiceClient<Ros2Xarm_msgsSrvVacuumGripperCtrlBinding> Ros2Xarm_msgsSrvVacuumGripperCtrlClient;
    /**
     * @brief Owning typed service server for Ros2Xarm_msgsSrvVacuumGripperCtrl.
     * @details Binds every operation to Ros2Xarm_msgsSrvVacuumGripperCtrlBinding. Owners stay
     * stationary in one Guest instance and are not copyable. Explicit Host alias grants remain
     * necessary. Shared state is caller-serialized; callbacks execute only when the caller polls, never
     * on a hidden thread. Available in C++98 and newer.
     * @see roswasmcpp::vendor_detail::ServiceServer
     */
    typedef ::roswasmcpp::vendor_detail::ServiceServer<Ros2Xarm_msgsSrvVacuumGripperCtrlBinding> Ros2Xarm_msgsSrvVacuumGripperCtrlServer;
#endif
}  // namespace uwvm_custom
